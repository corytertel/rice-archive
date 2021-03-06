{ pkgs, config, ... }:

{
  programs.urxvt = {
    enable = true;
    extraConfig = {
      #"termName" = "rxvt-256color";
      "termName" = "rxvt";
      "visualBell" = "false";
      "loginShell" = "true";
      "geometry" = "85x33";

      "colorMode" = "true";
      "intensityStyles" = "false";
      "pointerColor" = "#ffffff";
      "pointerColor2" = "000000";

      "foreground" = "#f0f0f0";
      "background" = "#0f0f0f";
      "color0"     = "#4c4c4c";
      "color8"     = "#262626";
      "color1"     = "#ac8a8c";
      "color9"     = "#c49ea0";
      "color2"     = "#8aac8b";
      "color10"    = "#9ec49f";
      "color3"     = "#aca98a";
      "color11"    = "#c4c19e";
      "color4"     = "#8f8aac";
      "color12"    = "#a39ec4";
      "color5"     = "#ac8aac";
      "color13"    = "#c49ec4";
      "color6"     = "#8aacab";
      "color14"    = "#9ec3c4";
      "color7"     = "#f0f0f0";
      "color15"    = "#e7e7e7";

      "font" = "xft:VictorMono Nerd Font Mono:style=Regular:size=10:antialias=true";
      "boldFont" = "xft:VictorMono Nerd Font Mono:style=Bold:size=10:antialias=true";
      "italicFont" = "xft:VictorMono Nerd Font Mono:style=Italic:size=10:antialias=true";
      "boldItalicFont" = "xft:VictorMono Nerd Font Mono:style=Bold Italic:size=10:antialias=true";

      "internalBorder" = "30";
      "externalBorder" = "0";
      "cursorBlink" = "true";
      "cursorUnderline" = "false";
      "urgentOnBell" = "true";
      "depth" = "32";
      "perl-ext-common" = "default,tabbedex,keyboard-select,url-select";

      "urlLauncher" = "firefox";
      "underlineURLs" = "true";
      "urlButton" = "1";
    };
    iso14755 = false;
    keybindings = {
      "Shift-Up" = "command:\033]720;1\007";
      "Shift-Down" = "command:\033]721;1\007";
      "Control-Up" = "command:\033[1;5A";
      "Control-Down" = "command:\033[1;5B";
      "Control-Right" = "command:\033[1;5C";
      "Control-Left" = "command:\033[1;5D";

      "Shift-Control-V" = "eval:paste_clipboard";
      "Shift-Control-C" = "eval:selection_to_clipboard";

      "Control-Escape" = "perl:keyboard-select:activate";
      "Control-S" = "perl:keyboard-select:search";
      "Control-U" = "perl:url-select:select_next";
    };
    scroll = {
      bar.enable = false;
      keepPosition = true;
      lines = 5000;
      scrollOnKeystroke = true;
      scrollOnOutput = false;
    };
  };

  home.file = {
    ".urxvt/ext/tabbedex".text = builtins.readFile ./tabbedex;
    ".urxvt/ext/keyboard-select".text = builtins.readFile ./keyboard-select;
    ".urxvt/ext/url-select".text = builtins.readFile ./url-select;
    ".urxvt/ext/clipboard".text = builtins.readFile ./clipboard;
  };
}
