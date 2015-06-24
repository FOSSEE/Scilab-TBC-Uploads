clear;
clc;
disp('Example 9.6');

//  aim : To determine
//  the overall transfer coefficient and the heat loss per hour

//  Given values
x1 = 25*10^-3;// Thickness of insulating board, [m]
x2 = 75*10^-3;// Thickness of fibreglass, [m]
x3 = 110*10^-3;// Thickness of brickwork, [m]
k1 = .06;// Thermal conductivity of insulating board, [W/m K]
k2 = .04;// Thermal conductivity of fibreglass, [W/m K]
k3 = .6;// Thermal conductivity of brickwork, [W/m K]
Us1 = 2.5;//  surface heat transfer coefficient of the inside wall,[W/m^2 K]
Us2 = 3.1;//  surface heat transfer coefficient of the outside wall,[W/m^2 K]
ta1 = 27;// internal ambient temperature, [C]
ta2 = 10;// external ambient temperature, [C]
h = 6;// height of the wall, [m]
l = 10;// length of the wall, [m]

//  solution
U = 1/(1/Us1+x1/k1+x2/k2+x3/k3+1/Us2);// overall heta transfer coefficient,[W/m^2 K]

A = l*h;// area ,[m^2]

Q_dot = U*A*(ta1-ta2);// heat loss [W]

//  so heat loss per hour is
Q = Q_dot*3600*10^-3;// [kJ]
mprintf('\n The overall heat transfer coefficient for the wall is   =  %f  W/m^2 K\n',U);
mprintf('\n The heat loss per hour through the wall is  =  %f kJ\n',Q);

//  End
