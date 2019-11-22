#! bin/bash

cp -r /home/moralg/Docusaurus/website/* /home/moralg/GitHub/ZonaByte/
cd /home/moralg/GitHub/ZonaByte/
git add *
git commit -m "$1"
git push
cd /home/moralg/Docusaurus/website/
npm run build
surge build/test-site/ zonabyte.surge.sh