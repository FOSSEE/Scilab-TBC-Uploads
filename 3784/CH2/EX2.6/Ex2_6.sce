clc
//variable initialization
N=800 //speed in rpm
P=80000 //power in kw
V=440 //Supply voltage in volts
f=50 //Supply frequency in Hz
Ra=0.8 //armature resistance in ohm
k=0.2 //machine constant in V/rpm
Ia=160 //rated current in ampere

//solution
Vp=V/(sqrt(3))//Phase Voltage
Eb=k*N//Back emf in Volts
V2=Eb+(Ia*Ra)
a=acosd((V2*%pi)/(3*sqrt(6)*Vp))
printf('\n\n The Firing Angle=%0.1f\n\n',a)
