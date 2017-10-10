clear
clc
//Example 13.10 UNCERTAINTY ESTIMATE FOR AN ORIFICE METER
K=0.66;
d=0.15; //[m]
A=%pi*d^2/4 //area[m^2]
D=0.24; //[m]
g=9.81; //[m/s^2]
h=0.25; //[m]
S=13.6; //specific gravity of Hg
del_h=h*(S-1) //piezometric head[m]
Q=K*A*sqrt(2*g*del_h)
//From equation of uncertainty, (UQ/Q)^2=(UK/K)^2+(2Ud/d)^2+(Uh/2h)^2
//from example 13.2
UK=0.03;
Ud=0.00015;//[m]
Uh=0.01;//[m]
//Uncertainty in Q
UQ=Q*sqrt((UK/K)^2+(2*Ud/d)^2+(Uh/(2*h))^2) 
printf("\nThe uncertainty of the calculated discharge = %.4f m^3/s.\n",UQ)