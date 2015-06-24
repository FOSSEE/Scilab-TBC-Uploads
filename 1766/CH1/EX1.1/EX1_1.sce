clc;funcprot(0);//Example 1.1
//Initilisation of Variables
K=0.1;..............//Thermal conductivity in W/mK
A=5;...............//Area of board in m^2
delt=10;...........//Temparature difference in degree celsius
L=0.05;.............//thickness in m
//Calculations
Q=(K*A*delt)/L;.........//Heat transfer rate in W
q=Q/A;.........//Heat flux in W/m^2
disp(Q,"Heat transfer rate in W:")
disp(q,"Heat flux in W/m^2:")
