git add .
git commit -m %1
git push -u origin pelicanbranch
pelican content -o output -s pelicanconf.py
ghp-import output -r origin -b master
git push origin master
git checkout pelicanbranch