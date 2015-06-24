clc;funcprot(0);......//Example 4.12
//Initialization of variables
Di=0.1;...........//Outer  diameter of the tube in m
t=15*10^-3;.......//Air gap of the tube in m
Tw=400;........//Temperature tube in K
Ta=310;.............//Temperature of cold plate in K
v=21.1*10^-6;.......//Viscosity in m^2/s
K=0.03047;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.692;......//Prandlt no
Do=0.13;.......//Inner diameter of tube in m
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf);........//Temp inverse in K^-1
Gr=(g*B*(Tw-Ta)*t^3)/(v^2);.......//Grashoff No
Ra=((log(Do/Di))^4*(Gr*Pr))/(t^3*((Di)^(-3/5)+(Do)^(-3/5))^5);...........//Grashof number
Keff=K*0.386*(Pr/(0.861+Pr))^(1/4)*(Ra)^(1/4);........//Effective thermal conductivity in W/mK
Q=(2*%pi*Keff*(Tw-Ta))/log(Do/Di);.........//Heat loss per meter length in W/m
disp(Q,"Heat loss per meter length in W/m:")
