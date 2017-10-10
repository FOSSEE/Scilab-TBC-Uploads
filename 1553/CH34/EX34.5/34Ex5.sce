//chapter 34 Ex 5

clc;
clear;
close;
t=10; theta1=30; theta2=60; 
//let height=h; base1=x; base2=y;
//from figure, (x+y)=tan(60)*h; and y=tan(30)*h;
x=tan(60)-tan(30); //this equation excludes the h term since 2 eq's cannot contain 3 unknowns
y=1/tan(60); //this equation excludes the h term since 2 eq's cannot contain 3 unknowns
time=t*y/x;
mprintf("The time required to reach shore is %.0f min",time);
