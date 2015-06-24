clc;funcprot(0);//Example 1.9
//Initilisation of Variables
A=15*15;........//Surface area in m^2
Ts=30;.........//Surface tempature in degree celsius
Ta=45;.......//Air tempature in degree celsius
h=8;........//average convective heat transfer coefficient in W/(m^2*K)
//Calculations
Q=h*A*(Ta-Ts);......//Heat transfer in W
disp(Q/1000,"Heat transfer in kW:")
