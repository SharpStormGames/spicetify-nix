{
  source,
  lib,
  ...
}:
with source; let
  # EXTENSIONS ----------------------------------------------------------------

  fullScreen = {
    src = "${dakshExtensions}/Extensions/full-screen/dist";
    filename = "fullScreen.js";
  };
  volumePercentage = {
    src = "${dakshExtensions}/Extensions";
    filename = "volumePercentage.js";
  };

  hidePodcasts = {
    src = hidePodcastsSrc;
    filename = "hidePodcasts.js";
  };

  copyToClipboard = {
    src = "${customAppsExtensionsSrc}/v2/copy-to-clipboard";
    filename = "copytoclipboard2.js";
  };
  showQueueDuration = {
    src = "${customAppsExtensionsSrc}/v2/show-queue-duration";
    filename = "showQueueDuration.js";
  };

  fullAlbumDate = {
    src = "${huhExtensionsSrc}/fullAlbumDate";
    filename = "fullAlbumDate.js";
  };

  charliesAdblock = {
    src = "${charlieS1103Src}/adblock";
    filename = "adblock.js";
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
  // appendJS fullAlbumDate
  // appendJS showQueueDuration
  // appendJS copyToClipboard
  // appendJS hidePodcasts
  // appendJS charliesAdblock # adblock.js
  // appendJS fullScreen
  // appendJS volumePercentage
