
![solarized dualmode](https://cdn.rawgit.com/ericgiannini/ToDoListiOS/af05da58/Rabbitask.svg)

<p align="center">

    <img src="https://img.shields.io/badge/platform-iOS%208%2B-blue.svg?style=flat" alt="Platform: iOS 8+" />
    
    <a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/Language-Swift%203-green.svg?style=flat" alt="Language: Swift" /></a>

 <a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/language-Objective--C-red.svg?style=flat" alt="Language: Objective-C" /></a>
 
    <a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" alt="Carthage compatible" /></a>
    
    <a href="http://cocoadocs.org/docsets/Pantry"><img src="https://img.shields.io/cocoapods/metrics/doc-percent/Pantry.svg" alt="Docs" /></a>
    
    <img src="http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat" alt="License: MIT" />

</p>



------
# Rabbitask


Rabbitask is a set of template iOS apps for a list app exhibiting implementation of a unique set of uncommon features such as `unwind(segue: UIStoryboardSegue)`, `prepareForSegue` / `prepare(for segue:)`, `UIBarButtonItem` & `UITableView` in both Objective-C & Swift 3. It is not common, for instance, to set an instance of `UIBarButtonItem` as an `IBOutlet` as a `sender` for `prepareForSegue` / `prepare(for segue:)` on an `unwind(segue: UIStoryboardSegue)`. 

## Major Features 

+  `unwind(segue: UIStoryboardSegue)`

[//]: <Comment> ( While an segues are common, unwinds naturally return the sourceViewController.)

+  `prepareForSegue` / `prepare(for segue:)` 

[//]: <Comment> ( While segues are common, unwinds return naturally.)


+  `UIBarButtonItem` as an `IBOutlet`

 [//]: <Comment> ( While an IBAction may be a default assumption, `UIBarButtonItem` as an `IBOutlet` is far more elegant, intuitive, brief, since `IBOutlet` is not a function.)
 
+  `UITableView`

[//]: <Comment> ( `UITableView`s are customizable.)
 
## Minor Features 
The User Interface demonstrates the basics of `CRUD` for a `UITableView`.

<table>
  <tr>
    <td>Acronym</td>
    <td>UI</td>
    <td>Interface</td>
  </tr>
  <tr>
    <td>Create</td>
    <td>UIBarButtonItem</td>
    <td> `prepareForSegue` / `prepare(for segue:)` </td>
  </tr>
  <tr>
    <td>Read</td>
    <td> UITableView </td>
    <td> unwindSegue(_:) </td>
  </tr>
  <tr>
   	<td>Update</td>
   	<td>UIBarButtonItem</td>
   	<td>`prepareForSegue` / `prepare(for segue:)`</td>
  </tr>
  <tr>
    <td>Delete</td>
    <td>UITableViewCell</td>
    <td>'canEditRowAt' </td>
</table>


## Languages

Rabbitask is written in both Objective-C as well as Swift 3.0.

## ToDoList 
- Collapse the seperate folders for the two languages into separate targets in the same `.xcodeproj`.
- Add the icons.

###### Please join us in [issues](https://github.com/ericgiannini/Rabbitask/issues) if you'd like to help us get to 1.0. Read about more [use cases for Rabbitask](https://medium.com/@unicornmobile/rabbitask-2e4c7dc82f16#.r73g7jjj3).





