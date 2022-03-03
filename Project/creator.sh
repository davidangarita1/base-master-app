#! /bin/bash

COMM=$1;
NAME=$2;
SOURCE="https://raw.githubusercontent.com/davidangarita1/base-master-app/main/Project/redux";

if [ "$COMM" = "redux" ]; then
	NAMEU=${NAME^^}
	NAMEL=${NAME,,}
	NAMECamel=${NAME^}

	echo "------------------------------------------------------"
	echo "Creating "$NAMECamel"Reducer...";

	# Redux
		cd src/redux/
		# Getting the action templates
		cd actions/actionTypes
			curl -o actionTypes$NAMECamel.js $SOURCE/actions/actionTypes/actionTypesExample.js
			sed -i 's/EXAMPLE/'$NAMEU'/g' actionTypes$NAMECamel.js
			sed -i 's/Example/'$NAMECamel'/g' actionTypes$NAMECamel.js
		cd ..
		# Getting the Action templates
			curl -o $NAMEL'Actions.js' $SOURCE/actions/exampleActions.js
			sed -i 's/EXAMPLE/'$NAMEU'/g' $NAMEL'Actions.js'
			sed -i 's/Example/'$NAMECamel'/g' $NAMEL'Actions.js'
			sed -i 's/example/'$NAMEL'/g' $NAMEL'Actions.js'
		cd .. && cd reducers
		# Getting the reducer templates
			curl -o $NAMEL'Reducer.js' $SOURCE/reducers/exampleReducer.js
			sed -i 's/EXAMPLE/'$NAMEU'/g' $NAMEL'Reducer.js'
			sed -i 's/Example/'$NAMECamel'/g' $NAMEL'Reducer.js'
			sed -i 's/example/'$NAMEL'/g' $NAMEL'Reducer.js'
		cd .. && cd middlewares
		# Getting the middleware templates
			curl -o $NAMEL'Middleware.js' $SOURCE/middlewares/exampleMiddleware.js
			sed -i 's/EXAMPLE/'$NAMEU'/g' $NAMEL'Middleware.js'
			sed -i 's/Example/'$NAMECamel'/g' $NAMEL'Middleware.js'
			sed -i 's/example/'$NAMEL'/g' $NAMEL'Middleware.js'
		cd .. && cd app
		# Getting the app templates
			sed -i "s/'redux'/'redux'\nimport "$NAMEL"Reducer from '..\/reducers\/"$NAMEL"Reducer'/g" rootReducer.js
			sed -i 's/combineReducers({/combineReducers({\n\t\t  '$NAMEL': '$NAMEL'Reducer,/g' rootReducer.js
		cd ..
	echo "------------------------------------------------------"
	echo $NAMECamel"Reducer Created";
fi