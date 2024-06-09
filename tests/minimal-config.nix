{
  callPackage,
  spicetify-cli,
  spotify,
  ...
}: let
  spiceLib = callPackage ../lib {};
  spicePkgs = callPackage ../pkgs {};

  extensions = with spicePkgs.extensions; [
    fullAppDisplay
    shuffle
    hidePodcasts
  ];

  theme = spicePkgs.themes.Orchis;

  config-xpui = spiceLib.xpuiBuilder {
    inherit extensions theme;
    cfgXpui = spiceLib.types.defaultXpui;
    cfgColorScheme = null;
    cfg = {};
    apps = [];
  };
in
  spiceLib.spicetifyBuilder {
    inherit spotify config-xpui extensions theme;
    spicetify = spicetify-cli;
  }
