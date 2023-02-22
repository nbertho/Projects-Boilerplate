#!/bin/bash

mkdir src/;
cd src/;

# Create Laravel App in src/backend folder
curl -s https://laravel.build/backend | bash;

# Create Vue App in src/frontend folder
vue create frontend;
