clc;funcprot(0);//Example 2.3
//Initilisation of Variables
T1=300;.........//inner surface temparature of cylinder in degrees celcius
T2=200;.........//outer tempatarure of cylinder in degrees celcius
L=2;.........//length of hollow cylinder in mm
r1=0.05;.......//inner radius of hollow cylinder in m
r2=0.1;......//outer radius of hollow cylinder in m
K=70;.......//thermal conductivity of cylinder in W/(m*K)
A=1;.....//area of slab in m^2
//Calculations
R=log(0.1/0.05)/(2*%pi*K*L);.....//resistance in degrees celcius/W
Q=(T1-T2)/R;.....//conduction heat transfer in W 
disp(Q/200,"conduction heat transfer rate through cylinder in W")
