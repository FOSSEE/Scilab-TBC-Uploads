clc;
g=9.8;         //gravitational constant in m/sec square
d=1.03*10^3;   //density of sea water in kg/m cube
depth=50;      //depth in m
side=20;       //length of side in cm
p=d*depth*g;   //calculating pressure on window
A=side*side*10^-4;  //calculating area in metre square
F=p*A;     //calculating FOrce in Newton
disp(F,"Force acting on window in Newton = ");   //displaying result.