#!/bin/bash
set +x
echo "Link of the logo you want to change it to (.svg)"
read logo_link
cd /var/www/pterodactyl/public/assets/svgs
rm "pterodactyl.svg"
curl -o "pterodactyl.svg" "$logo_link"
cd ../../..
yarn build:production
echo "Logo was changed!"
set -x
