#! /bin/bash

NAME=$1;
SOURCE="https://raw.githubusercontent.com/davidangarita1/base-master-app/main/Project";

echo "Creating Vite $NAME-app...";
# Checking if the directory exists
if [ -d "$NAME-app" ]; then
	echo "The project $NAME-app already exists";
else
	# checking node is installed
	if [ -x "$(command -v node)" ]; then
		echo "Node is installed";
		cd ../..
		npm create vite@latest $NAME-app -- --template react
		cd $NAME-app
		npm install --save react-router-dom redux react-redux redux-thunk axios dotenv

		echo "Creating folder structure...";
		touch .env
		curl -o creator.sh $SOURCE/creator.sh
		cd src
		# Principal folders
			mkdir components && mkdir layouts && mkdir pages && mkdir redux && mkdir services && mkdir utils
		# Components
			mkdir components/private && mkdir components/public
			
			# Getting the private component template
			cd components
				cd private
					curl -o ExamplePrivate.jsx $SOURCE/base/components/private/ExamplePrivate.jsx
				cd ..
			# Getting the public component template
				cd public
					curl -o ExamplePublic.jsx $SOURCE/base/components/public/ExamplePublic.jsx
				cd ..
			cd ..
		# Layouts
			cd layouts
			# Getting the layout templates
				curl -o PrivateLayout.jsx $SOURCE/base/layouts/PrivateLayout.jsx
				curl -o PublicLayout.jsx $SOURCE/base/layouts/PublicLayout.jsx
			cd ..
		# Pages
			mkdir pages/private && mkdir pages/public

			# Getting the page templates
			cd pages
				cd private
					curl -o ExamplePagePrivate.jsx $SOURCE/base/pages/private/ExamplePagePrivate.jsx
				cd ..
				cd public
					curl -o ExamplePagePublic.jsx $SOURCE/base/pages/public/ExamplePagePublic.jsx
				cd ..
				curl -o NotFound.jsx $SOURCE/base/pages/NotFound.jsx
			cd ..
		# Redux
			mkdir redux/actions && mkdir redux/actions/actionTypes && mkdir redux/reducers && mkdir redux/app && mkdir redux/middlewares
			cd redux
			# Getting the action templates
				cd actions/actionTypes
					curl -o actionTypesExample.js $SOURCE/base/redux/actions/actionTypes/actionTypesExample.js
				cd ..
				curl -o exampleActions.js $SOURCE/base/redux/actions/exampleActions.js
				cd ..
			# Getting the app templates
				cd app
					curl -o rootReducer.js $SOURCE/base/redux/app/rootReducer.js
					curl -o store.js $SOURCE/base/redux/app/store.js
				cd ..
			# Getting the middlewares templates
				cd middlewares
					curl -o exampleMiddleware.js $SOURCE/base/redux/middlewares/exampleMiddleware.js
				cd ..
			# Getting the reducers templates
				cd reducers
					curl -o exampleReducer.js $SOURCE/base/redux/reducers/exampleReducer.js
				cd ..
			cd ..
		# Services
			cd services
				curl -o firebase.js $SOURCE/base/services/firebase-vite.js
			cd ..
		# Utils
			cd utils
				curl -o conecction.js $SOURCE/base/utils/conecction-vite.js
			cd ..
		# Main
			rm -rf main.jsx && rm -rf App.jsx
			curl -o main.jsx $SOURCE/base/main.jsx
			curl -o App.jsx $SOURCE/base/App.jsx

	else
		echo "Node is not installed";
		exit;
	fi
fi
