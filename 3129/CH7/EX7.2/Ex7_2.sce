//Finding the Average On-state Current of a Thyristor
//Example 7.2(Page No- 330)
clc
clear
//given data
Ip = 1000;//A
I_TM = Ip;//A
fs = 50;//Hz
T = 1/fs;
t1 = 5*10^-6;//s
t2 = t1;//s
//from figure given in question 
A1 = 0.5*5*1000;//Area of traingle one 
A2 = (20000-2*5)*1000;//Area of Rectangle
A3 = 0.5*5*1000;//Area of traingle two
I_T = (1/20000)*(A1+A2+A3);
printf('The average on-state Current is %.2f A',I_T);
 
