clc
clear
//Input data
Vm=100//Maximum voltage in V
R=50//resitance in ohms

//Calculations
Vrms=(Vm/sqrt(2))//rms voltage in V
Irms=(Vrms/R)//rms current in A
Im=(Vm/R)//Maximum current in A

//Output
printf('rms current is %3.2f A and maximum current is %i A',Irms,Im)
