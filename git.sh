#!/bin/bash

declare -A directory_repository_map=(
           ["$HOME/Документы/MusicBox/api/auth"]="https://gitlab.musicbox.local/music-box/back-end/auth"
           ["$HOME/Документы/MusicBox/api/admin"]="https://gitlab.musicbox.local/music-box/back-end/admin"
           ["$HOME/Документы/MusicBox/api/public"]="https://gitlab.musicbox.local/music-box/back-end/public"
           ["$HOME/Документы/MusicBox/consumer"]="https://gitlab.musicbox.local/music-box/back-end/mail"
           ["$HOME/Документы/MusicBox/frontend/admin"]="https://gitlab.musicbox.local/music-box/front-end/admin"
           ["$HOME/Документы/MusicBox/frontend/public"]="https://gitlab.musicbox.local/music-box/front-end/public"
)

for dir in "${!directory_repository_map[@]}"; do
            if [   -d   "$dir"   ]; 
            then
                   cd  $dir
                      #git init
                      #git remote add origin ${directory_repository_map[$dir]}
                      #git pull       
           else 
                  echo "Project directory isn't exist ..."
                  echo "Create directory: $dir" 
             mkdir -p $dir
          fi        
    echo 
done
    echo "Directory create successfull"
unset directory_repository_map

