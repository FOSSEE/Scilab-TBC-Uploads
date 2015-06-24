//Example 5_7
clc;
clear;
close;
format('v',6);
//given data : 
A=1.5*1.5;//mm^2
A=A/100;//cm^2
W=2*10^-4;//cm(Space charge thikness)
epsilon=16/(36*%pi*10^11);//F/cm(For Ge)
CT=epsilon*A/W*10^12;//pF
disp(CT,"Barrier capacitance(pF)");
