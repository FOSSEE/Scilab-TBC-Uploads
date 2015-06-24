clc
clear
//Input data
R=5//Resistance in ohms
L=2*10^-3//Inductance in H
C=25*10^-6//Capacitance in F
V=50//Voltage in V

//Calculations
w=1/sqrt(L*C)//Angular speed in rad/s
f=(w/(2*3.14))//Frequency in Hz
Q=(w*L)/R//Q factor

//Output
printf('Resonating frequency is %3.2f Hz \n Q factor is %3.2f',f,Q)
