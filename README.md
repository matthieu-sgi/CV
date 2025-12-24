# About

This CV is based on an Opensource template found on Overleaf. The template initial README is available in this repo with the name **"README.ORIG.md"**.
I modified this template to suit my needs.
I also built a docker image in order to compile.

# Compilation

to run the docker, use: 
```sh
docker run -v "$PWD":/workdir <name of container>
```
This will add an "output" directory in your current working directory with the `main.pdf` output.  
Your Latex entrypoint should be called `main.tex`.