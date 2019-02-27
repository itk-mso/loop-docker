#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cp $DIR/templates/template.sites.php $DIR/web/sites/sites.php

source .env

### Loop over sites defined in .env
for siteName in $SITES
do
  echo "Setting up ${siteName}"
  mkdir ${DIR}/web/sites/${siteName}.sundhedogomsorg.dk
  cp ${DIR}/templates/template.settings.php ${DIR}/web/sites/${siteName}.sundhedogomsorg.dk/settings.php
  echo "\$databases['default']['default']['database'] = '${siteName}';" >> ${DIR}/web/sites/${siteName}.sundhedogomsorg.dk/settings.php
done
