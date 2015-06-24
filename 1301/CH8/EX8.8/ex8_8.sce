clc;
m=20000;  //mass in kg
A=60;     //area in metre square
g=9.8;    //gravitational constant in m/sec square
F=m*g;    //calculating force in Newton
p=F/A;    //calculating pressure in Pascal
disp(p,"Pressure in Pascal = ");  //displaying result.
disp(p/(1.013*10^5),"Pressure in atm = ");  //displaying result.