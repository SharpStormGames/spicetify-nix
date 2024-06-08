{
  lib,
  source,
  ...
}:
with source; let
  # THEMES --------------------------------------------------------------------
in {
  official = let
    dribbblishExt = {
      filename = "dribbblish.js";
      src = "${officialThemes}/Dribbblish";
    };

    turntableExt = {
      filename = "turntable.js";
      src = "${officialThemes}/Turntable";
    };
    mkOfficialTheme = themeName: {
      ${themeName} = {
        name = themeName;
        src = officialThemes;
        appendName = true;
        injectCss = true;
        replaceColors = true;
        overwriteAssets = false;
        sidebarConfig = false;
      };
    };
  in
    {
      Dribbblish = {
        name = "Dribbblish";
        src = officialThemes;
        requiredExtensions = [dribbblishExt];
        patches = {
          "xpui.js_find_8008" = ",(\\w+=)32";
          "xpui.js_repl_8008" = ",$\{1}56";
        };
        injectCss = true;
        replaceColors = true;
        overwriteAssets = true;
        appendName = true;
        sidebarConfig = true;
        additionalCss = ''
          .Root {
            padding-top: 0px;
          }
        '';
      };
      text = {
        name = "text";
        src = officialThemes;
        patches = {
          "xpui.js_find_8008" = ",(\\w+=)56";
          "xpui.js_repl_8008" = ",$\{1}32";
        };
        injectCss = true;
        replaceColors = true;
        appendName = true;
        overwriteAssets = false;
        sidebarConfig = false;
      };
      Dreary = {
        name = "Dreary";
        src = officialThemes;
        sidebarConfig = true;
        appendName = true;
      };
      Turntable = {
        name = "Turntable";
        src = officialThemes;
        requiredExtensions = ["fullAppDisplay.js" turntableExt];
      };
      catppuccin = {
        name = "catppuccin";
        src = catppuccinSrc;
        appendName = true;
        injectCss = true;
        replaceColors = true;
        overwriteAssets = true;
        sidebarConfig = false;
      };
    }
    // mkOfficialTheme "Ziro"
    // mkOfficialTheme "Sleek"
    // mkOfficialTheme "Onepunch"
    // mkOfficialTheme "Flow"
    // mkOfficialTheme "Default"
    // mkOfficialTheme "BurntSienna"
    // mkOfficialTheme "Blossom"
    // mkOfficialTheme "Sleek"
    // mkOfficialTheme "Nightlight"
    // mkOfficialTheme "Matte";
}
