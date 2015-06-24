//                    Example 12.1
// Write a program to read data from keyboard,write it to a file called INPUT,
// again read the same data from the INPUT file and display it on the screen.

warning('off');
disp("Data Input");

//Open the file INPUT
f1=mopen('INPUT.txt','w');
// Get character from keyboard
c=read(%io(1),1,1,'(a)');
mfprintf(f1,'%s',c);

//close the file input
mclose(f1);


disp("Data Output");
//Reopen the file INPUT
f1=mopen('INPUT.txt','r');
     txt=mgetl(f1);
     printf("%s",text);
//close the file input
mclose(f1);
