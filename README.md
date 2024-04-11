# Automation-KeyRepeater_for_VideoGames
AutoHotKey script to loop repeating keyboard/mouse button presses. Used for video games such as "Raft" or "World of Warcraft". Includes Anti-Bot detection. 

F12 enables/disables script.  
-Checks if script is active and sends different action if true.  
-If true sends the value to toggle loop ON/OFF.  
-If false sends the value that matches the normal key press.  
-For example shortcut to to toggle "E" button press to pick crops will toggle loop for "E".  
-But false will only send the letter "E" to the keystroke buffer instead.  
-This is so that you can still use chat box while also using the script as you can turn it ON/OFF at any time.  

Press "E" to toggle repeating "E" with loop.  
-Used to automate various tasks such as picking up crops in Raft.  
Press "T" to toggle repeating "T" with loop.  
-Used to automate various tasks.  
Press "Y" to toggle repeating "LeftMouseClick" with loop.  
-Used to automate crafting or deconstructing in WOW.  
-Especially useful to line up with fishing lure to automat fishing in WOW and used with sound detection and lure finder scripts.  

Wait time between each loop is randomized between a range so that it isn't picked up by bot detection software.  
Large waits are also done every 5 min in addition to the wait for each loop.
