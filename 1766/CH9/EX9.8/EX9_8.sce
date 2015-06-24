clc;funcprot(0);//Example 9.8
//Initilisation of Variables
T=3000;....//Temparature of filament in a bulb in K
E=100;...//Tungsten filament of light bulb
e=0.3;....//Emissivity of filament in a bulb in
R=5.67*10^-8;.....//Stefens boltsman constant
//calculations
A=E/(e*R*T^4);.....//Minimum surface area of tungsten filament if the bulb is completely evacated and is at a steady state condition in m^2
disp(A,"Minimum surface area of tungsten filament if the bulb is completely evacated and is at a steady state condition in m^2:")
