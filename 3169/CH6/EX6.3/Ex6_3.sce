//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 6.3
//calculation of series resistance ,damping resistance and maximum output voltage of the generator

//given data
n=8//number of stages
C=0.16*10^-6//value of condenser(in farad)
Cl=1000*10^-12//value of load capacitor (in farad)
t1=1.2*10^-6//time to front(in second)
t2=50*10^-6//time to tail(in second)
Vc=120*10^3//charging voltage(in V)

//calculation
C1=C/n//generator capacitance
C2=Cl//load capacitance
R1=(t1*(C1+C2))/(3*C1*C2)
R2=(t2/(0.7*(C1+C2)))-R1
V=n*Vc//dc charging voltage for n stages
alpha=1/(R1*C2)
betaa=1/(R2*C1)
Vmax=(V*(exp(-alpha*t1)-exp(-betaa*t1)))/(R1*C2*(alpha-betaa))

printf('The value of series resistance is %d ohm',round(R1))
printf('\nThe value of damping resistance is %d ohm',round(R2))
printf('\nThe value of maximum output voltage of the generator is %3.2f kV',-Vmax*10^-3)

//Vmax value from the equation is 892.02 kV
