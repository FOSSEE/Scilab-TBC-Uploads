clc 
//variable initialisation
V=440 //Supply voltage in volts
P=4 //number of poles
f=50 //Supply frequency in Hz
R=0.2 //rotor resistance in ohm
X=0.35 //leakage reactance in ohm
N1=1450 //speed in rpm
N2=1200 //speed in rpm
S2=0.2
//solution
Vph=V/sqrt(3)
Ns=(120*f)/P//Synchronous Speed
Wms=2*%pi*Ns/60
S=(Ns-N1)/Ns
T=(3/Wms)*(Vph^2)*(R/S)/((R/S)^2+(X)^2)//The answer provided in the textbook is wrong
K=T/(1-S)
T2=K*(1-S2)
Vph2=sqrt(T2*((R/S)^2+(X)^2)/((3/Wms)*(R/S)))
Vl=Vph2*sqrt(3)
printf('\n\n Torque=%0.1f N-m\n\n',T)//The answer provided in the textbook is wrong
printf('\n\n Line Voltage to be imposed=%0.1f Volts\n\n',Vph2)
