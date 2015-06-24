clc
clear
//Input data
L=2//Inductance in H
Vrms=220//rms voltage in V
f=50//Frequency in Hz

//Calculations
Xl=(2*3.14*f*L)//Reactance in ohms
Irms=(Vrms/Xl)//rms current in A

//Output
printf('rms current is %3.3f A',Irms)
