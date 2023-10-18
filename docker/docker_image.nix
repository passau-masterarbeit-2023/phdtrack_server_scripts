{ 
    pkgs ? import <nixpkgs> {}, 
    buildImage ? pkgs.dockerTools.buildImage, 
    pullImage ? pkgs.dockerTools.pullImage,
    
}:

let

  
in
{
    nixFromDockerHub = pullImage {
        imageName = "nixos/nix";
        imageDigest = "sha256:85299d86263a3059cf19f419f9d286cc9f06d3c13146a8ebbb21b3437f598357";
        sha256 = "19fw0n3wmddahzr20mhdqv6jkjn1kanh6n2mrr08ai53dr8ph5n7";
        finalImageTag = "2.2.1";
        finalImageName = "nix";
    };
}