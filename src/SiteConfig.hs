{-# LANGUAGE QuasiQuotes #-}
module SiteConfig where

import Hakyll
import Text.RawString.QQ

-- Note when running the following,  make sure there is no local master branch!

deployCmd :: String
deployCmd = [r|
git stash
git checkout develop
stack exec myblog rebuild
git fetch --all
git checkout -b master --track origin/master
cp -a _site/. .
git add -A
git commit -m 'Publish.'
git push origin master:master -f
git checkout develop
git branch -D master
git stash pop
|]

deployCfg :: Configuration
deployCfg = defaultConfiguration {deployCommand = deployCmd}
