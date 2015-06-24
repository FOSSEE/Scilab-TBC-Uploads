clc;funcprot(0);//EXAMPLE 20.32
// Initialisation of Variables
Vamb=10.5;........//Free air volume in m^3
Pamb=1.013;...........//Free air presssure in bar
Tamb=273+15;..........//Free air temperature in K
T1=(273+25);...........//Temperature at the end of suction in all cylinders in K
P1=1;............//Pressure at the suction in bar
pd=95;...........//Delivery presssure in bar
N=100;.........//Compressor rpm
n=1.25;..........//Adiabatic index
k=0.04;.........//Fractional clearances for LP
k1=0.07;.........//Fractional clearances for HP
//Calculations
z=(pd/P1)^(1/3);.........//Pressure ratio
pi1=z*P1;
pi2=z*pi1;
etavollp=1+k-(k*(z^(1/n)));
etavolhp=1+k1-(k1*(z^(1/n)));
v1=(Pamb*Vamb*T1)/(Tamb*P1);
sclp=(round(v1))/(etavollp*N);.........//Swept capacity of LP cylinder in m^3
disp(sclp,"Swept capacity of low pressure cylinder in m^3:")
vip=(Pamb*Vamb*T1)/(pi1*Tamb);.........//Volume of free air reduced to suction conditions of IP cylinder
scip=vip/(etavolhp*N);.........//Swept capacity of IP cylinder in m^3
disp(scip,"Swept capacity of intermediate pressure cylinder in m^3:")
vhp=(Pamb*Vamb*T1)/(pi2*Tamb);.........//Volume of free air reduced to suction conditions of HP cylinder
schp=vhp/(etavolhp*N);.........//Swept capacity of HP cylinder in m^3
disp(schp,"Swept capacity of intermediate pressure cylinder in m^3:")

