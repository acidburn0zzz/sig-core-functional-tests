#!/bin/sh
# Author: Nikhil Lanjewar <nikhil@lanjewar.com>
# Author: Sahil Muthoo <sahilm@thoughtworks.com>
# Author: Sahil Aggarwal <sahilagg@gmail.com>
# Author: Saager Mhatre <saager.mhatre@gmail.com>
#	  Christoph Galuschka <christoph.galuschka@chello.at>

t_Log "Running $0 - Check version of ruby."

if [ "$el_ver" = "7" ] ; then
  ruby -v | grep -q '2.0'
  ret_val=$?
elif [ "$el_ver" = "6" ] ; then
  ruby -v | grep -q '1.8.7'
  ret_val=$?
else
  ruby -v | grep -q '1.8.5'
  ret_val=$?
fi

t_CheckExitStatus $ret_val

