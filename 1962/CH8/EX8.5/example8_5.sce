
//example 8.5
//page 290
clc; funcprot(0);
//initialisation of variable
S=0.81;
mu=4/10^5;
Gamma=62.4*0.81;
P1=6.5*144+Gamma*4/2;
P2=8*144;
Sp=(P1-P2)/4;
q=integrate('2154.75*y-359125*y^2','y',0,0.006);
disp(q,"discharge per unit ft on the plate (ft^2/s)");
k=2154.75-718250*0.006;//k=du/dy
tau=4*10^-5*k;
disp(tau,"shear stress on the plate (lbs/ft^2)");
clear
