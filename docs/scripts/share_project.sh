#!/bin/bash

chmod g+X $STOCKYARD

cd $STOCKYARD

mkdir class-directory

chgrp -R G-876543 class-directory

chmod g+s class-directory

chmod g+rX class-directory

cd class-directory

echo $(pwd)
