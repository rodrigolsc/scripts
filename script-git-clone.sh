#! /bin/bash

mkdir meus_repositorios_git
cd meus_repositorios_git

repositorios=$(curl -s https://api.github.com/users/rodrigolsc/repos | awk '/clone_url/{print $2}' | sed 's/^"//g' | sed 's/",$//g')

for repositorio in $repositorios
do
	git clone $repositorio
done
