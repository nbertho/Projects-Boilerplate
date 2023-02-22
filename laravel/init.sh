#!/bin/bash

# Create Laravel App in src/backend folder
curl -s https://laravel.build/src | bash;

cd src;
vendor/bin/sail up;
