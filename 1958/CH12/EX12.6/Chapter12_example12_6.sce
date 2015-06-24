clc
clear
//Input data
L=6//Inductance in mH
C=12//Capacitance in pF
V=6//Voltage of the battery in V

//Calculations
f=(1/(2*3.14*sqrt(L*10^-3*C*10^-12)))/10^5//Frequency of oscillation in Hz*10^5
Qm=(C*10^-12*V)/10^-12//Maximum charge in C *10^-12
Im=(2*3.14*f*10^5*Qm*10^-12)/10^-6//Maximum current in micro A

//Output
printf('Frequency of oscillation is %3.2f *10^5 Hz \n The maximum value of charge on capacitor is %i *10^-12 C \n The current in the circuit is %i micro A',f,Qm,Im)
