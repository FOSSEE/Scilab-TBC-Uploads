//Example 5_4
clc;
clear;
close;
format('v',5);
//given data : 
t1=25;//degree C
t2=70;//degree C
VB1=0.7;//V
delV=-0.002*(t2-t1);//V
VB2=VB1+delV;//V//barrier potential
disp(VB2,"(a) Barrier potential at 70 degree C is (V)");
//Part (b)
t1=25;//degree C
t2=0;//degree C
VB1=0.7;//V
delV=-0.002*(t2-t1);//V
VB2=VB1+delV;//V//barrier potential
disp(VB2,"(b) Barrier potential at 0 degree C is (V)");
