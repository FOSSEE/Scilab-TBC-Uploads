clc;funcprot(0);//Example 2.5
//Initilisation of Variables
T1=225;.........//inner surface temparature of wall in degrees celcius
T4=25;.........//outer tempatarure of wall in degrees celcius
r1=5;.......//inner radius of steel pipe in cm
r2=5.5;......//outer radius of steel pipe in cm
r3=10.5;......//middle layer radius of steel pipe in cm
r4=15.5;......//middle layer radius of steel pipe in cm
K1=50;....//thermal conductivity of first layer of insulation in W/m*K
K2=0.06;....//thermal conductivity of second layer of insulation in W/m*K
K3=0.12;....//thermal conductivity of steel pipe in W/m*K
L=1;....//Length of the pipe in m
//Calculations
R1=log(r2/r1)/(2*%pi*K1*L);....//resistance of first layer in degrees celcius/W
R2=log(r3/r2)/(2*%pi*K2*L);....//resistance of second layer in degrees celcius/W
R3=log(r4/r3)/(2*%pi*K3*L);....//resistance of steel pipe in degrees celcius/W
Q=(T1-T4)/(R1+R2+R3);....//conduction transfer of pipe in W
T2=T1-(Q*R1);....//intermediate temparature in degrees celcius
T3=T2-(Q*R2);....//intermediate temparature in degrees celcius
disp(Q,"a.conduction heat transfer in W:")
disp(T2,T3,"b.intermediate temparatures T2 & T3 are in degrees celcius:")
