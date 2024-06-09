{
  lib,
  source,
  ...
}:
with source; let
  # THEMES --------------------------------------------------------------------
 Hazy = {
    name = "Hazy";
    src = hazySrc;
    appendName = false;
    injectCss = true;
    replaceColors = true;
    overwriteAssets = false;
    sidebarConfig = false;
    requiredExtensions = [
     {
      filename = "hazy.js";
      src = "${hazytheme}";
     }
   ];
  };
in {
  official = let
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
    };
  inherit
   Hazy
   ;
}
