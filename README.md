# Docker setup for loop
Start docker:

    itkdev-docker-compose up

Setup project files in web folder from master branch:

    itkdev-docker-compose drush make --working-copy https://raw.github.com/itk-mso/Loop/master/drupal.make web

Create sites with script:

    ./setup_sites.sh
