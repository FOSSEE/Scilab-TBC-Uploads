clc;
clear;
IE=1.5*10^-3 //in mA
Cje=1.2*10^-12 //in F
Dn=25 //in cm^2/s
WB=0.4*10^-4 //in cm
Wdc=2.5*10^-4 //in cm
vs=10^7 //in cm/s
Rc=25 //in ohm
CBC=0.15*10^-12 //in F
CS=0.12*10^-12 //in F
Const=0.026 //constant for kT/e in V

//Calculation
Re=Const*(1/IE) //in ohm
tau_e=Re*Cje //emitter-base junction charging in s
tau_b=WB^2/(2*Dn) //transit time in the base in s
tau_d=Wdc/vs //collector depletion region transit time in s
tau_c=Rc*(CBC+CS) //collector capacitance charging time in s
tau_D=tau_e+tau_b+tau_d+tau_c
fT=1/(2*%pi*(tau_D))

mprintf("Total emitter-to-collector delay time= %0.2e s\n",tau_D)
mprintf("cut-of frequency of transistor= %0.2e Hz",fT)
