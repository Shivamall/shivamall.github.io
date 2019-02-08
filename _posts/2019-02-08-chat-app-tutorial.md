

# Tutorial To Build Real Time Chat with Firebase and Swift

## [Guide to Build Chat App]({% post_url 2019-02-08-chat-app-tutorial %})

### Why we using Firebase
Firebase is easy to handle and easy to understand and it is perfect to make Real Time Chat.It provide us cloud base database easy to access from anywhere.

### What we need to install
* Installing CocoaPods
* Firebase Setup
* Config Message View Controller
* Installing JsqMsgViewController

# Lets Start: Creating a project in xcode
 First we gonna create new project in xcode.
 
 Start Xcode - Choose File --> New --> Project .. A Dialog will poppup and we going to select project Temaplate for our app.
 Choose Single View Controller which has only one view controller after selecting single view press Next.
 
Inputting following items on next screen:
* Product Name: RealTimeChat
* Team: Your name or company name
* Organization Name: Your company name, like  RealTimeChat
* Organization Identifier: A reverse-URL, like com.shivamall
* Bundle Identifier: com.shivamall. RealTimeChat
* Language: Swift
* Leave the checkboxes Unmarked for Core Data, Unit Tests and UI Tests unchecked

After this your screen should be like this



Then click Next.In the next dialog, choose a  location in your drive to save your project.

Main Xcode View will showed up









* On the extreme right, there are some  Inspectors. They give you fine control of aspects of your project, like UI elements in     Interface Builder, Quick Help, and file properties.
* On the left, there are Navigators. They help with organizing your project and tools.
* In the middle there's a main editor, that currently shows Project Settings. When you’re coding, this area shows a text editor.
* At the top left you see Play and Stop buttons, and a Target dropdown. With those buttons you can run and build your app, and you can     choose on which device you want to run your app, like a actual iPhone, or an Simulator.
* In the middle, at the top, you see a status bar. Important messages appear there.


### We have to change few things in our project:

* Open the ViewController.swift file in the Project Navigator.
* Then find class: class ViewController: UIViewController {.
* Then, click on ViewController while holding the Command-key. popup will appear and select rename.
* Then, in the screen that appears, rename ViewController to ChatViewController. Make sure that the checkbox for Main.storyboard is       ticked.
* At Last click rename on top right.








### Now its time to embed chatviewcontroller in a navigation controller:

* First, open Main.storyboard from Project Navigator. Interface Builder opens…
* Then, select Chat View Controller  in the list on the left. This will activate the main view controller you see in the editor,           with a blue border.
* Then, choose from the menu Editor -> Embed In -> Navigation Controller. This will merge the view controller with navigation controller. Make sure to put navigation controller on left of chat view controller.

There's two arrow on is entry point arrow on left of nav controller and one arrow in between two views who is connecting both views.


# Installing CocoaPods
 We gonna use CocoaPods for installing libraries . Its a package manager .
 For installing Cocoapods we gonna use CLI command line interface.
 
 ```
 $ sudo gem install cocoapods 
 ```
 No need to type $ sign
 
* Right-click on your Chat project in the Project Navigator and choose New File....
* Then, in the dialog  and choose the Empty template from the Other category.
* Then, in the save dialog that appears, name the file Podfile and make sure to save the file in the same directory as Chat.xcodeproj. 

## Open PodFile and this code:
```
platform :ios, '9.0'

target 'Chat' do
  use_frameworks!

  pod 'Firebase/Core'
  pod 'Firebase/Storage'
  pod 'Firebase/Auth'
  pod 'Firebase/Database'
  pod 'JSQMessagesViewController'

end
```

Save the file
 Code is telling cocoapods that which pods is need to install for which platform and target.
 
 Then close the Xcode project and quit the Xcode software.
 
 ### Now we using CLI:
 For tha open Terminal and type in 
 ```
 $ cd
 ```
give spcae after $ sign
Then Drag RealTimeChat from finder onto the terminal window and then press enter it will give us path of that folder somewhat like this:

```
$ cd /Desktop/RealTimeChat
```
Press Enter and type in 
```
$ pod install
```

This will install pods in our project

Now open Chat.xcworkspace fron finder into terminal.Instead of working with the project, you’ll now work with the workspace.
Open Build Phases Of your chatapp in project settings theres a new import of pod .






Now we going to add Bridging header and installing JSQMessagesViewController library 

* First, right click on your project in the Project Navigator and choose New File...
* Then, select Header File from Source category and click Next.
* Finally, in the save dialog, name the file Bridging-Header.h. Make sure to tick the checkbox at the bottom of the dialog, the one for   Targets and Chat. Save the file alongside your Podfile and workspace files by clicking Create.

When the file opens, type the following in it:

```
#import <JSQMessagesViewController/JSQMessages.h>
```
### Next Step
* Go to your Project Settings by clicking on your project in the Project Navigator, and go to the Build Settings tab for the               







RealTimeChat Target.
* Then, in the search box top-right, start typing bridging header. locate the row that says * Objective-C Bridging Header.
* Double-click on the empty column next to Objective-C Bridging Header – input box appears. Type in: Bridging-Header.h and click outside the input box to confirm your change.\

# Setting up Firebase Now:










