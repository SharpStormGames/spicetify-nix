# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  customAppsExtensionsSrc = {
    pname = "customAppsExtensionsSrc";
    version = "0f5e79fe43abf57f714d7d00bd288870d5b6f718";
    src = fetchgit {
      url = "https://github.com/3raxton/spicetify-custom-apps-and-extensions";
      rev = "0f5e79fe43abf57f714d7d00bd288870d5b6f718";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-4zL/z8dCafy5V95ASR3c6TffMh9wdpnclAjddD9TX84=";
    };
    date = "2022-05-02";
  };
  dakshExtensionsSrc = {
    pname = "dakshExtensionsSrc";
    version = "f78c04e13fbbcae2db654dd69c314aa9101a7340";
    src = fetchgit {
      url = "https://github.com/daksh2k/Spicetify-stuff";
      rev = "f78c04e13fbbcae2db654dd69c314aa9101a7340";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-O7Y3Ac5rU9DaNJlZsyRbdJfjwBE5tjpzOeQotfLg9zk=";
    };
    date = "2024-06-29";
  };
  hazySrc = {
    pname = "hazySrc";
    version = "0f10b520d94ad84b2d0f6fbee31277ce3212ff4e";
    src = fetchgit {
      url = "https://github.com/Astromations/Hazy";
      rev = "0f10b520d94ad84b2d0f6fbee31277ce3212ff4e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-DpBRfNDMryCmpqJC2PW43XOXrw0wQhcsIocCNRZWM0Q=";
    };
    date = "2024-06-30";
  };
  hidePodcastsSrc = {
    pname = "hidePodcastsSrc";
    version = "2ecc5150c4f26d609b69ee6293d6bfc200989cc4";
    src = fetchgit {
      url = "https://github.com/theRealPadster/spicetify-hide-podcasts";
      rev = "2ecc5150c4f26d609b69ee6293d6bfc200989cc4";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-PpJbNZSrARdGdeVGLAfE32mKgwS9s+H2I6DaYwpYkCk=";
    };
    date = "2024-06-26";
  };
  huhExtensionsSrc = {
    pname = "huhExtensionsSrc";
    version = "f032dde7cce9d441795d9e2f728531684e97e3fa";
    src = fetchgit {
      url = "https://github.com/huhridge/huh-spicetify-extensions";
      rev = "f032dde7cce9d441795d9e2f728531684e97e3fa";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-fttZYeWqGNy4A9FqHe8znaWGePI2bBE92Ir4bp3i1wY=";
    };
    date = "2023-12-06";
  };
  officialSrc = {
    pname = "officialSrc";
    version = "abe53f6058585ddd041380f2728d0ec9b2f54b57";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-cli";
      rev = "abe53f6058585ddd041380f2728d0ec9b2f54b57";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-HAgW+0wzOu3FGc4jlYRjC5USpE8Iv6FKh41rcv4gqTo=";
    };
    date = "2024-06-29";
  };
  officialThemes = {
    pname = "officialThemes";
    version = "9d9a24a0fa6e7193c732c7040b7032b32220d468";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-themes";
      rev = "9d9a24a0fa6e7193c732c7040b7032b32220d468";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-9jkrd87IpIrpJlBbCWFHVhwAsoKEyEG82Dp3Oi2rePE=";
    };
    date = "2024-07-01";
  };
  rxriSrc = {
    pname = "rxriSrc";
    version = "9168bc5d6c3b816ba404d91161fd577b3bf43e4a";
    src = fetchgit {
      url = "https://github.com/rxri/spicetify-extensions";
      rev = "9168bc5d6c3b816ba404d91161fd577b3bf43e4a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-kPjmDVyxtXG1puedQKD6HRP6eN/MPdEZ9Zs4Ao4RVtg=";
    };
    date = "2024-06-14";
  };
  spotifywmSrc = {
    pname = "spotifywmSrc";
    version = "8624f539549973c124ed18753881045968881745";
    src = fetchgit {
      url = "https://github.com/dasJ/spotifywm";
      rev = "8624f539549973c124ed18753881045968881745";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-AsXqcoqUXUFxTG+G+31lm45gjP6qGohEnUSUtKypew0=";
    };
    date = "2022-10-25";
  };
}
