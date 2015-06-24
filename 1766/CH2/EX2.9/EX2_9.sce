clc;funcprot(0);//Example 2.9
//Initilisation of Variables
T1=290;.........//inner surface temparature of hallow spherein degrees celcius
T3=20;.........//outer tempatarure of hallow sphere in degrees celcius
r1=0.05;.......//inner radius of hollow sphere in m
r2=0.15;......//radius of interface between 2 layers in m
r3=0.2;....//outer raius of hallow sphere in m
K1=70;....//thermal conductivity of inner layer of insulation in W/m*K
K2=15;....//thermal conductivity of outer layer of insulation in W/m*K
t2=5;....//thickness of outer layer of hallow sphere in cm
//Calculations
R1=(r2-r1)/(4*%pi*r1*r2*K1);....//resistance of inner layer in degrees celcius /W 
R2=(r3-r2)/(4*%pi*r3*r2*K2);.....//resistance of outer layer in degrees celcius /W
Q=(T1-T3)/(R1+R2);.....//Heat transfer rate in kW
T2=T1-(Q*R1);...//interface temparature between two layers in K
disp(Q/1000,"a.conduction heat transfer rate through hallow sphere in kW:")
disp(T2,"interface temparature between the layers in degrees celcius in k:")
