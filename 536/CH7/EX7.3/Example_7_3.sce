clc;
clear;

printf('Example 7.3\n');

d=0.6;//Tank diameter
N1=4;//Rotor dpeed in Hertz
P1=0.15;//Power consumption
Re1=160000;//Reynold's number
//The correlation of power consumption and Reynolds number is given by:
//equation (7.13)
printf("\n For Constant impeller tip speed \n");
D1=d/3;
D2=6*D1;
N2=%pi*N1*D1/(%pi*D2);
printf("\n The new rotor speed = %.2f Hz",N2);
//from eq(1) of the solution
P2=7.32*N2^3*D2^5;
printf("\n The new power required = %.2f kW",P2);
//For thermal similarity, that is the same temperature in both systems:
Re2=Re1*(N2*D2^2/(N1*D1^2));
printf("\n The new reynolds number = %d",Re2);

printf("\n\n For Constant power input per unit volume\n");
V2=(%pi/4)*(6*d)^3;
P=V2*0.884;
printf("\n The new power required = %.2f kW",P);
N=(P/(7.32*(6*0.6/3)^5))^(1/3);
printf("\n The new rotor speed = %.2f Hz",N);
Re=Re1*(N*D2^2/(N1*D1^2));
printf("\n The new reynolds number = %d",Re);