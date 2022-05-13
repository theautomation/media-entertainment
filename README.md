# media-entertainment

![GitHub repo size](https://img.shields.io/github/repo-size/theautomation/media-entertainment?logo=Github)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/theautomation/media-entertainment?logo=github)
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/theautomation/media-entertainment/main?logo=github)

This repository contains a full media-entertaiment application stack running in my Kubernetes cluster. 

[Transmission](https://transmissionbt.com/): Torrent download client with OpenVPN where Transmission is running only when OpenVPN has an active tunnel.

[Jellyfin](https://jellyfin.org/): a multimedia applications designed to organize, manage, and stream digital media files to networked devices.\

[Prowlarr](https://github.com/Prowlarr/Prowlarr/): Prowlarr is an indexer manager/proxy base stack offering complete management of torrent indexers with no per app indexer setup required.

[Bazarr](https://www.bazarr.media/): Bazarr is a companion application to Sonarr and Radarr that manages and downloads subtitles.

[Radarr](https://radarr.video/): Radarr is a movie collection manager to grab, sort, and rename them. It can also be configured to automatically upgrade the quality of existing files in the library when a better quality format becomes available.

[Sonarr](https://sonarr.tv/): Sonarr is a TV show and series collection manager. It can monitor for new episodes of shows and series and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

## Folder Structure Conventions     

    ├── ...
    ├── cicd   
    │   ├── argocd             # GitOps Argo continuous delivery application yaml('s)
    │   ├── tekton             # Tekton continuous intergration pipeline yaml('s)
    ├── deploy                 
    │   ├── kubernetes         # K8s manifest yaml('s)
    │   ├── docker             # Dockefile(s) to build container image(s)
    ├── src                    # Application source code
    └── ...
