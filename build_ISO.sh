mkdir ./iso-output
sudo -i 
rm -r ./iso-output/*
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer ghcr.io/jasonn3/build-container-installer:latest IMAGE_REPO=ghcr.io/zoethetranshoe IMAGE_NAME=zoeys-first-image IMAGE_TAG=latest VARIANT=Silverblue VERSION=41
sudo chown zoey ./iso-output/deploy.iso 
