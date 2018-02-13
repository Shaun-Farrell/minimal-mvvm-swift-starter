# MVVM minimal starter project

## Description
Minimal MVVM project with a ViewModel, a ViewController and some unit tests.

## Usage
Clone or download and cd into root project. Open the .xcodeproj file to run in Xcode.

## Advantages of this pattern
The UI logic (View Controller) is separated from the Model data transformation logic (ViewModel). This is a nice separation of concerns and easier to test.  
You can avoid the Massive View Controller problem that is common to the MVC pattern.  
Maintain a uni-directional data flow.

## How to extend / scale this example
A typical expansion would be to add a new module with a new ViewController a new ViewModel and new Views to display on the front end.
I plan to add a slightly more advanced View to the display in the ViewController. The Model and ViewModel will require some new properties. This will be on a new branch (advanced) to keep this example minimal.
