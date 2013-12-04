TH-NavigationStack
==================

A control that organizes multiple navigation controllers in a stack with search option in both the states.


![alt text](https://raw.github.com/torryharris/TH-NavigationStack/master/Nav_Stack_githubVideo.gif "Navigation Stack")


##How to use:
1. Deployment target should be 6.0 or later

2. Copy all file from 'NavigationStackResource' Folder to your project. (It incorporates ARC)

3. import NavStackViewController.h and Subclass NavStackViewController   
       
        #import "NavStackViewController.h"    

        @interface ViewController : NavStackViewController

4. Intialize the controller data 
         
         NSString* plistPath = [[NSBundle mainBundle] pathForResource: @"NavStackControllerData" ofType: @"plist"];
         // Build the dictionary from the plist
         self.jsonDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];

       ## Note : You can get data from any source. This framework needs a specific dictionary to run on. 
       (A dictionary contains array of dictionary and each element-dictionary in the array contains two strings -             subheadingName  and subheadingImg .  While preparing the dictionary, use the same-key name  as mentioned in .plist        file. )
         
5. Customize the headerView When displaying Full-Menu View.
      
        [self setHeaderLabelFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:20.0f]]
        [self setHeaderLabelColor:[UIColor blackColor]];
        [self setHeaderBackGroundColor:[UIColor whiteColor]];

6. Customize the headerView When displaying Detailed-Menu View.
        
        [self setSelectedHeaderLabelFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:20.0f]];
        [self setSelectedHeaderLabelColor:[UIColor blackColor]];	
        [self setSelectedHeaderBackGroundColor:[UIColor whiteColor]];

7. Call setHeaderSeparatorColor to set the color of separator view.

        [self setHeaderSeparatorColor:[UIColor lightGrayColor]];
               



#####Steps 6 is optional.
##License
NavigationStack is licensed under the terms of the MIT License. Please see the [License](https://github.com/torryharris/TH-NavigationStack/blob/master/LICENSE) file for full details.
