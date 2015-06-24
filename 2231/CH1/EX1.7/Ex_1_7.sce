//Example 1_7
clc;
clear;close;

//Given data
i_latch=40*10^-3;//A
t=40*10^-6;//s
Vdc=90;//V
R=25;//ohm
L=0.5;//H

//Solution :
i=Vdc/R*(1-exp(-R*t/L));//A
disp("Current in the circuit is "+string(i)+" A, it is less than latchig current, the thyristor will not turn on.");
R=Vdc/(i_latch-i);//ohm
disp("Maximum value of R is "+string(R)+" ohm.");
