clc;funcprot(0);//Example 2.1
//Initilisation of Variables
T1=1300;.........//outermost tempatarure of composite wall in degrees celcius
T3=115;.........//outermost tempatarure of composite wall in degrees celcius
L1=500;.........//thickness of first slab in mm
L2=161;.........//thickness of second slab in mm
K1=1.4;.........//thermal conductivity of first slab in W/(m*K)
K2=0.35;.......//thermal conductivity of second slab in W/(m*K)
A=1;.....//area of slab in m^2
//Calculations
R1=L1/(A*K1);.........//resistance of first slab in K/W
R2=L2/(A*K2);.........//resistance of second slab in K/W
R=R1+R2;..........//total resistace in K/W
Q=(T1-T3)/R;.........//heat transfer in W
T2=T1-(Q*R1);.......//temparatures of surface in contact
disp(Q,"conduction heat transfer in W:")
disp(T2,"temparature of surface in contact:")
