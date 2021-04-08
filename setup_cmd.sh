#!/bin/bash
install_path="/opt/dkan-tools"

if [ "$1" == "--install" ] 
    then
        echo "Installing command: dktl"
        sudo git clone https://github.com/GetDKAN/dkan-tools.git $install_path
        echo "See Documentation: https://getdkan.github.io/dkan-tools/"
elif [ "$1" == "--remove" ] 
    then
        sudo rm -rfd $install_path
        echo "Removed dkan tool in $install_path"
elif [ "$1" == "--help" ] 
    then
        echo "Install DKAN Tool with --install"  
        echo "Remove DKAN Tool with --remove"
        echo "Export command to path without argument"  
fi

if [ $# -eq 0 ]
    then
        export PATH=$PATH:$install_path/bin
        echo "Exported command to path"
fi



