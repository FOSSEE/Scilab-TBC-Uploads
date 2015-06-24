clc
clear

//input
c=4*(10^-6);//capacitance of a capacitor by which a resistive-inductive load is shunted in farad
v=2;//supply voltage in volts
f=5000;//supply frequency in hertz
q=10;//Q factor of the circuit 

//calculations
vwc=2*2*%pi*f*c;//capacitor current in amperes
it=vwc/q;//total current in amperes
i1=((vwc^2)+(it^2))^0.5;//load current in amperes
z1=v/i1;//load impedance in ohms
r1=z1*(it/i1);//resistance of load in ohms
x1=q*r1;//reactance of load in ohms
l=(x1*(10^6))/(2*%pi*f);//load inductance in microhenry

//output
mprintf('the load has a resistance of %3.3f ohms and an inductance of %3.0f microhenry',r1,l)
