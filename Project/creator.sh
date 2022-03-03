#! /bin/bash

COMM=$1;
NAME=$2;
SOURCE="https://raw.githubusercontent.com/davidangarita1/base-master-app/main/src";

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
				curl -o actionTypes$NAMECamel.js $SOURCE/redux/actions/actionTypes/ActionTypesExample.js
				sed -i 's/EXAMPLE/'$NAMEU'/g' actionTypes$NAMECamel.js
				sed -i 's/Example/'$NAMECamel'/g' actionTypes$NAMECamel.js
			cd ..
				curl -o $NAMEL'Actions.js' $SOURCE/redux/actions/exampleActions.js
				sed -i 's/EXAMPLE/'$NAMEU'/g' $NAMEL'Actions.js'
				sed -i 's/Example/'$NAMECamel'/g' $NAMEL'Actions.js'
				sed -i 's/example/'$NAMEL'/g' $NAMEL'Actions.js'
			cd .. && cd reducers
				curl -o $NAMEL'Reducer.js' $SOURCE/redux/reducers/ExampleReducer.js
				sed -i 's/EXAMPLE/'$NAMEU'/g' $NAMEL'Reducer.js'
				sed -i 's/Example/'$NAMECamel'/g' $NAMEL'Reducer.js'
				sed -i 's/example/'$NAMEL'/g' $NAMEL'Reducer.js'
			cd .. && cd middlewares
				curl -o $NAMEL'Middleware.js' $SOURCE/redux/middlewares/exampleMiddleware.js
				sed -i 's/EXAMPLE/'$NAMEU'/g' $NAMEL'Middleware.js'
				sed -i 's/Example/'$NAMECamel'/g' $NAMEL'Middleware.js'
				sed -i 's/example/'$NAMEL'/g' $NAMEL'Middleware.js'
			cd .. && cd app
				sed -i "s/'redux'/'redux'\nimport "$NAMEL"Reducer from '..\/reducers\/"$NAMEL"Reducer'/g" rootReducer.js
				sed -i 's/combineReducers({/combineReducers({\n\t\t  '$NAMEL': '$NAMEL'Reducer,/g' rootReducer.js
			cd
	echo "------------------------------------------------------"
	echo $NAMECamel"Reducer Created 😀";
fi