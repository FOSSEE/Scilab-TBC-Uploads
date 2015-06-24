clc
clear

//input
v=415;//supply voltage in volts
f=50;//supply frequency in hertz
r1=50;//resistance in branch 1 in ohms
r2=30;//resistance in branch 2 in ohms
c=50*(10^-6);//capacitance in branch 2 in farad
//branch 1 and 2 are in parallel

//calculations
g1=1/r1;//conductance of branch 1 in siemens
xc=1/(2*%pi*f*c);//reactance of branch 2 in siemens
z=((r2^2)+(xc^2))^0.5;//impedance in ohms
g2=r2/(z^2);//conductance of branch 2 in siemens
b2=xc/(z^2);//susceptance of branch 2 in siemens
gt=g1+g2;//total conductance in siemens
bt=0+b2;//total susceptance in siemens
yt=((gt^2)+(bt^2))^0.5;//total admittance in mho
it=v*yt;//total current in amperes
R=gt/(yt^2);//resistance of the series equivalent circuit in ohms
Xc=bt/(yt^2);//capacitive reactance of the series circuit in ohms

//output
mprintf('the current taken from the supply will be %3.1f A and the resistance and capacitive reactance of the equivalent series circuit are %3.0fohm and %3.0fohms respectively',it,R,Xc)
