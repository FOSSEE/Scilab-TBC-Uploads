clc;funcprot(0);//Example 2.25
//Initilisation of Variables
T1=150;....//temparature at material A surface in degrees celcius
T3=50;.....//temparature between materials B&C in degrees celcius
K1=0.1;....//thermal conductivity of material A in W/m*degrees celcius
K2=1.0;.....//thermal conductivity of material B in W/m*degrees celcius
K3=2;.....//thermal conductivity of material C in W/m*degrees celcius
L1=0.02;....//length of material A in m
L2=0.04;....//length of material B in m
L3=0.03;....//length of material c in m
A=1;...//area of wall in m^2
//calculations
R1=L1/(K1*A);....//resistance of material A in degrees celcius/W
R2=L2/(K2*A);....//resistance of material B in degrees celcius/W
R3=L3/(K3*A);....//resistance of material C in degrees celcius/W
Q=(T1-T3)/(R1+R2);.....//heat transfer upto 2 materials inW/m^2
T2=T1-(Q*R1);...//interface temparature  in degrees celcius
T4=T3-(Q*R3);...//surface temparature in degrees celcius
disp(T2,"interface temparature  in degrees celcius:")
disp(T4,"surface temparature in degrees celcius:")
