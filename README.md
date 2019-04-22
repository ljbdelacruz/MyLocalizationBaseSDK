# MyLocalizationBaseSDK
localization framework for any project centralize and minimize work



HOW TO USE IN YOUR PROJECT:

1) Setting up Localization
-there is a Property list in the project named Localization.plist
-fill the data of this with your translation


NOTE: sequence of the localization must be followed
Check

enum->MyAppLocale


add the languages you will use in your localization and set its corresponding index
make sure the index set to that language matches the index on the propertylist

ex. JP is 0 in your MyAppLocale make sure that inside your plist JP translation is also the first item 

this concludes on how to use localizationSDK in your project


2) Using this in your project
Just build and copy the little briefcase in the project where you want to use it and walla! your good to go

all you have to do is basically set

MBLConfig.myLocale = .en
Note: the locale options can be set in the MyAppLocale script see above to learn more on what it does

then basically all you have to do is 

print("username".localized);

then it should print the localization you have selected

easy right?

if you still have further question email me at ljbdelacruz123@gmail.com hope this can help you























