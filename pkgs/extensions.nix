{
  source,
  lib,
  ...
}:
with source; let
  # EXTENSIONS ----------------------------------------------------------------

  adblock = {
    src = "${rxriSrc}/adblock";
    filename = "adblock.js";
  };
  copyToClipboard = {
    src = "${customAppsExtensionsSrc}/v2/copy-to-clipboard";
    filename = "copytoclipboard2.js";
  };
  fullAlbumDate = {
    src = "${huhExtensionsSrc}/fullAlbumDate";
    filename = "fullAlbumDate.js";
  };
  fullScreen = {
    src = "${dakshExtensionsSrc}/Extensions/full-screen/dist";
    filename = "fullScreen.js";
  };
  hidePodcasts = {
    src = hidePodcastsSrc;
    filename = "hidePodcasts.js";
  };
  showQueueDuration = {
    src = "${customAppsExtensionsSrc}/v2/show-queue-duration";
    filename = "showQueueDuration.js";
  };
  volumePercentage = {
    src = "${dakshExtensionsSrc}/Extensions";
    filename = "volumePercentage.js";
  };
  
  sanitizeName = lib.replaceStrings [".js" "+"] ["" ""];

  warnExt = {
    ext,
    alias ? ext.filename,
  }:
    lib.trivial.warn
    "You are referring to extension ${alias} by filename. This behavior is deprecated, please use spicetify-nix.packages.$\{pkgs.system}.default.extensions.${sanitizeName ext.filename}"
    ext;

  mkExtAlias = alias: ext:
    {
      ${alias} = warnExt {inherit ext alias;};
      ${sanitizeName ext.filename} = ext;
    }
    // (
      if alias != ext.filename
      then {${sanitizeName alias} = ext;}
      else {}
    );

  appendJS = ext: mkExtAlias ext.filename ext;
in
  {
    official = let
      mkOfficialExt = name: {
        "${name}.js" = {
          src = "${officialSrc}/Extensions";
          filename = "${name}.js";
        };
        ${sanitizeName name} = {
          src = "${officialSrc}/Extensions";
          filename = "${name}.js";
        };
      };
    in
      mkOfficialExt "shuffle+";
    _lib = {
      inherit sanitizeName;
    };
  }
  // mkExtAlias "copyToClipboard.js" copyToClipboard

  // appendJS adblock
  // appendJS copyToClipboard
  // appendJS fullAlbumDate
  // appendJS fullScreen
  // appendJS hidePodcasts
  // appendJS showQueueDuration
  // appendJS volumePercentage
