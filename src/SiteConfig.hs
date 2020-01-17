{-# LANGUAGE QuasiQuotes #-}
module SiteConfig where

import Hakyll
import Text.RawString.QQ

-- Note when running the following,  make sure there is no local master branch!

deployCmd :: String
deployCmd = [r|
stack exec thoughts rebuild
git checkout -b master
mkdir docs
cp -a _site/* docs -r
git add -A
git commit -m 'Publish.'
git push origin master -f
git checkout develop
git branch -D master
git stash pop
|]

deployCfg :: Configuration
deployCfg = defaultConfiguration {deployCommand = deployCmd}
