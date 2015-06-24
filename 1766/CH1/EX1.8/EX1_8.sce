clc;funcprot(0);//Example 1.8
//Initilisation of Variables
Ts=100;......//Surface temparature in degree celsius
Ta=25;.......//Surrounding air in degree celsius
A=1;.........//Surface area of a plate in m^2
h=25;........//convetion heat transfer coefficient in W/(m^2*K)
//Calculations
Q=h*A*(Ts-Ta);......//Heat transfer rate to the air in W
disp(Q,"Heat transfer rate to the air in W:")

 
