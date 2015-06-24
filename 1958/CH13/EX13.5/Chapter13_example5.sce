clc
clear
//Input data
R=5000//Resistance in ohms
L=2//Inductance in H
Vrms=200//rms Voltage in V
f=50//Frequency in Hz

//Calculations
Xl=(2*3.14*f*L)//Inductive reactance in ohms
Z=sqrt(R^2+Xl^2)//Impedence in ohms
Vl=(Vrms*Xl)/Z//rms potential difference across the inductor in V

//Output
printf('rms potential difference across the inductor is %3.2f V',Vl)
