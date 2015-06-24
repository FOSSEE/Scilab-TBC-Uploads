clc
clear

//Input data
k=1.3 //Adiabatic constant 
P1=0.345 //Inlet pressure in bar
T1=350 //Inlet temperature in K
M1=1.5 //Inlet mach number 
P2=0.138 //Exit pressure in bar

//Calculation
p1=0.284 //Pressure ratio at entry from gas tables @M1,k=1.3
Po=P1/p1 //Stagnation Pressure in bar
t1=0.748 //Temperature ratio at entry from gas tables @M1,k=1.3
To=T1/t1 //Stagnation temperature in K
p2=P2/Po //Pressure ratio
M2=2.08 //Final Mach number from isentropic gas tables @p2
t2=0.606 //Temperature ratio at exit from gas tables @M2,k=1.3
T2=To*t2 //The temperature of the gas in K
w1=12.693 //Prandtl Merger function at M1 
w2=31.12 //Prandtl Merger function at M2
def=w2-w1 //Deflection Angle in degree

//Output
printf('(A)Deflection Angle is %3.3f degree\n (B)Final Mach number is %3.2f\n (C)The temperature of the gas is %3.3f K',def,M2,T2)
