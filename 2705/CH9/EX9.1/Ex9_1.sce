clear;
clc;
disp('Example 9.1');

//  aim : To determine 
//  the heat loss per hour through the wall and interface temperature

//  Given values
x1 = .25;// thickness of brick,[m]
x2 = .05;// thickness of concrete,[m]
t1 = 30;// brick face temperature,[C]
t3 = 5;// concrete face temperature,[C]
l = 10;// length of the wall, [m]
h = 5;// height of the wall, [m]
k1 = .69;// thermal conductivity of brick,[W/m/K]
k2 = .93;// thermal conductivity of concrete,[W/m/K]

//  solution
A = l*h;// area of heat transfer,[m^2]
Q_dot = A*(t1-t3)/(x1/k1+x2/k2);// heat transferred, [J/s]

//  so heat loss per hour is
Q = Q_dot*3600*10^-3;// [kJ]
mprintf('\n The heat lost per hour is  =  %f  kJ\n',Q);

//  interface temperature calculation
//   for  the brick wall, Q_dot=k1*A*(t1-t2)/x1;
//  hence
t2 = t1-Q_dot*x1/k1/A;// [C]
mprintf('\n The interface temperature is  =  %f C\n',t2);

//  End
