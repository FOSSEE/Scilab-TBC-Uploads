clc
//variable initialisation
Va=220 //supply voltage in volts
N1=1500 //speed in rpm
Ra=2 //armature resistance in ohm
La=0.02836 //armature inductance in mH
f=50 //frequency in Hz

//solution
Vl=(Va*%pi)/(3*sqrt(2))
Vm=sqrt(2)*Vl
printf('\n\n The Source Voltage Required=%0.1f Volts\n\n',Vm)
