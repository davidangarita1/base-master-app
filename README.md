# Getting Started with base-master-app

Important note: to execute the commands you must be located in the correct folder through the git bash console

In Git bash console you must execute the command
```sh
./react-master.sh react my-project-name
```

If you want to choose another library option you can use vite instead of react
```sh
./react-master.sh vite my-project-name
```


Immediately outside this folder you will see the name of your project concatenated with the string -app

Within your project you can see the creator.sh file, you can run it through the git bash console to create different components of your application such as the following:

* Redux
```sh
./creator redux my-redux-name
```

This will automatically create the whole structure of your reducer with the chosen name.