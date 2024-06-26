{
  callPackage,
  spicetify-cli,
  spotify,
  ...
}: let
  spiceLib = callPackage ../lib {};
  spicePkgs = callPackage ../pkgs {};

  extensions = with spicePkgs.extensions; [
    shuffle
    hidePodcasts
  ];

  theme = spicePkgs.themes.Hazy;

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
