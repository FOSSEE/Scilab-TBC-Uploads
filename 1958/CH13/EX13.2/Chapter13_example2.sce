clc
clear
//Input data
c=50//Capacitor in micro F
Vm=220//Maximum voltage in V
f=50//Frequency in Hz

//Calculations
Xc=(1/(2*3.14*c*10^-6*f))//Reactance in ohms
I=(Vm/Xc)//Maximum current in A 
Irms=I/sqrt(2)//rms current in A

//Output
printf('rms current is %3.2f A',Irms)
