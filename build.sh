#! /bin/sh

rm -rf build export .flatpak-builder &&
flatpak-builder build io.github.Mrmayman.QuantumLauncher.yml &&
flatpak build-export export build &&
exec flatpak build-bundle export io.github.Mrmayman.QuantumLauncher.flatpak io.github.Mrmayman.QuantumLauncher --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo
