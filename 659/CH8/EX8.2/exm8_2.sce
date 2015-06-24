//                  Example 8.2
//Write a program to read a line of text containing a series of-
//words from the terminal.

disp("Enter text. Press <Return> at end");
line=read(%io(1),1,1,'(a)');     //Read a line
disp(line);                      //Display line
