//Example 5_19
clc;
clear;
close;
format('v',4);
//given data : 
//Part (a)
t1=25;//degree C
t2=70;//degree C
I0t2BYI0t1=2^((t2-t1)/10+1);//anticipated factor
disp(I0t2BYI0t1,"(a) Anticipated factor");
disp("I0(70 degree C) = "+string(I0t2BYI0t1)+"*I0(25 degree C)");
//Part (b)
format('v',6)
t1=25;//degree C
t2=150;//degree C
I0t2BYI0t1=2^((t2-t1)/10);//anticipated factor
disp(I0t2BYI0t1,"(b) Anticipated factor");
disp("I0(150 degree C) = "+string(I0t2BYI0t1)+"*I0(25 degree C)");
//Answer in the textbook is not accurate.
