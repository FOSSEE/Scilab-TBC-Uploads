
clc;funcprot(0);//Example 2.27
//Initilisation of Variables
K1=0.69;....//thermal conductivity of brick in W/m*degrees celcius
K2=0.048;.....//thermal conductivity of celotex in W/m*degrees celcius
K3=0.74;.....//thermal conductivity of asbestos cemented board  in W/m*degrees celcius
K4=0.038;.....//thermal conductivity of glass wool in W/m*degrees celcius
L1=0.08;....//thickness of brick in m
L2=0.02;....//thickness of celotex in m
L3=0.02;....//thickness of asbestos cemented board in m
A=1;...//area of wall in m^2
//calculations
R1=L1/(K1*A);....//resistance of brick in degrees celcius/W
R2=L2/(K2*A);....//resistance of celotex in degrees celcius/W
R3=L3/(K3*A);....//resistance of asbestos cemented board in degrees celcius/W
R4=R1+R2+R3;....//resistance of glass wool in degrees celcius/W
L4=R4*A*K4;....//thickness of glass wool in m
disp(L4*100,"thickness of glass wool in cm:")
