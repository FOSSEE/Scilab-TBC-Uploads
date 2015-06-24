clc
clear
//Input data
Vm=220//Maximum voltage in V
f=50//frequency in Hz
R=2000//Resistance in ohms
C=5*10^-6//Capacitor in F

//Calculations
Xc=(1/(2*3.14*f*C))//Reactance in ohms
Z=sqrt(R^2+Xc^2)//Impedence in ohm
Vc=(Vm*Xc)/Z//Maximum potential difference across the capacitor in V

//Output
printf('Maximum potential difference across the capacitor is %3.2f V',Vc)
