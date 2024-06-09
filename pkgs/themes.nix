{
  lib,
  source,
  ...
}:
with source; let
  # THEMES --------------------------------------------------------------------
 Orchis = {
    name = "DarkGreen";
    src = orchisSrc;
    appendName = true;
    injectCss = true;
    replaceColors = true;
    overwriteAssets = false;
    sidebarConfig = false;
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
   Orchis
   ;
}
