//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 6.2
//calculation of series inductance and input voltage to transformer

//given data
kva=100*10^3//value of volt-ampere of transformer(in VA)
V=250*10^3//value of transformer secondary voltage(in V)
Vi=400//value of transformer primary voltage(in V)
Vc=500*10^3//voltage(in V)
Ic=0.4//charging current(in A)
perX=8//percentage leakage reactance
f=50//value of frequency(in Hz)
perR1=2//percentage resistance
perR2=2//percentage resistance of inductor


//calculation
I=kva/V//maximum value of current that can be supplied
Xc=Vc/Ic//reactance of cable
Xl=(perX*V)/(100*I)//leakage reactance
adrec=Xc-Xl//additional reactance
Xadrec=adrec/(2*%pi*f)
perR=perR1+perR2//total resistance
R=(perR*V)/(100*I)
VE2=I*R//excitation at secondary
VE1=VE2*Vi/V//primary voltage
IkW=(VE1/Vi)*100//input kW

printf('The value of series inductance is %d H.',round(Xadrec))
printf('\nThe value of input voltage to the transformer is %d V.',VE1)
