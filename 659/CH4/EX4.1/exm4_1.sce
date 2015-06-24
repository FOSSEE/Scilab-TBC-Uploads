//                 Exaymple 4.1
// The program shows the use of getchar function in an intractive environment.
//In Scilab in place of getchar function scanf function can be used to get 
//character as there is no getchar function in Scilab.

disp("Would you like to know my name?");
disp("Type Y for YES and N for NO:");
answer=scanf("%c");                      //Reading character
if (answer=='Y')|(answer=='y') then      //Test for answer
    disp("My name is BUSY BEE");
else
    disp("You are good for nothing")
end