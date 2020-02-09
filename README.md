# Documentation:

## Steps to deploy static site:

- Remember to run `stack build` in the event the `src` files need to be rebuilt
- Add and commit all files to be updated to the `develop` branch **ONLY**
- ~~run `stack exec thoughts deploy` # currently doesnt work due to a bug in stack~~
- run `source deploy.sh` instead

## Things to note:

- The deployment script is in `src/SiteConfig.hs`
- The blog post directory is in `/posts'`
- The source is at `/docs` as configured on github, configured via the deploymen script
- If you change the binary name remember to run `stack clean --full` to avoid
  running old binaries
