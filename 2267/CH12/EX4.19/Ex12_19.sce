//Part B Chapter 4 Example 19
clc;
clear;
close;
d=16;//cm
As=%pi/4*d^2;//cm
D1=poly(0,'D1');
D2=poly(0,'D2');
deltaD=As/(%pi/4);//(let deltaD=D1^2-D2^2)
//USS=1.2*USH
//USS=(D1^2+D2^2)/D1^2*USH
D2BYD1=sqrt(0.2);
D1=sqrt(deltaD/(1-D2BYD1^2));//cm
D2=D2BYD1*D1;//cm
disp("Outer diameter of hollow shaft is "+string(D1)+" cm.");
disp("Inner diameter of hollow shaft is "+string(D2)+" cm.");
