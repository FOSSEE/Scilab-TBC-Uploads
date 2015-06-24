clc;funcprot(0);//Example 1.4
//Initilisation of Variables
T1=500;.........//tempatarure of plate 1 in K
T2=350;.........//tempatarure of plate 2 in K
d=0.15;.........//diameter of the rod in m
L=1.5;.........//Length of the rod in m
K=0.4;.........//thermal conductivity in W/(m*K)
//Calculations
A=(%pi/4)*d^2;.......//Area of the rod in m^2
Q=(K*A*(T1-T2))/L;.....//heat transfer in kW
disp(Q,"heat transfer in kW:")

