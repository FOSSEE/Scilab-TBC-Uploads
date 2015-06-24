//             Example 4.11       
// The program illustrates the printing of character and strings. 

x='A';                    //x variable has character
name='ANIL KUMAR GUPTA';  //name variable has string
disp("OUTPUT OF CHARACTERS");
printf('%c\n%3c\n%5c\n',x,x,x);
printf('%3c\n%c\n',x,x);
printf('\n');
disp("OUTPUT OF STRINGS"); //disp can also be used for display
printf('%s\n',name);
printf('%20s\n',name);
printf('%20.10s\n',name);
printf('%.5s\n',name);
printf('%-20.10s\n',name);
printf('%5s\n',name);
