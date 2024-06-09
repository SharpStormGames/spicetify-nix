{source, ...}:
with source; {
  # CUSTOMAPPS ----------------------------------------------------------------
  official = {
    new-releases = {
      src = "${officialSrc}/CustomApps";
      name = "new-releases";
      appendName = true;
    };
    reddit = {
      src = "${officialSrc}/CustomApps";
      name = "reddit";
      appendName = true;
    };
    lyrics-plus = {
      src = "${officialSrc}/CustomApps";
      name = "lyrics-plus";
      appendName = true;
    };
  };
}
