#! /bin/bash

LIBR=$1;
NAME=$2;

case $LIBR in
  "react")
	if [ "$NAME" != "" ]; then
		cd libraries/
		./React.sh $NAME
		echo "$NAME";
	else
		echo "You must specify a name for the project";
	fi
	;;
  "vite")
	if [ "$NAME" != "" ]; then
		cd libraries/
		./Vite.sh $NAME
		echo "$NAME";
		## echo "Vite exists but is not implemented yet";
	else
		echo "You must specify a name for the project";
	fi
    ;;
  *)
	echo "Invalid Library";
	;;
esac

