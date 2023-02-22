#!/bin/bash

cd ../src

vendor/bin/sail composer require laravel/ui;
vendor/bin/sail artisan ui vue;
vendor/bin/sail npm install;

sudo cp -f ../config/vue-setup/app.blade.php ./resources/views/app.blade.php;
sudo cp -f ../config/vue-setup/web.php ./routes/web.php;
