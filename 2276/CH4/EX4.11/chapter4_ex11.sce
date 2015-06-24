clc
clear

//input
c=200*(10^-12);//capacitance of a capacitor which is connected in series with a coil in farad
q=80;//Q factor 
v=0.250;//supply voltage in volts
f=500000;//supply frequecy in hertz

//calculations
pd=q*v;//p.d. across the capacitor in volts
ic=pd*2*%pi*f*c;//capacitor current in amperes
r=v/ic;//resistance of the coil in ohms
xl=q*r;//reactance of coil in ohms
l=(xl/(2*%pi*f))*(10^6);//inductance of the coil in ohms

//output
mprintf('the resistance and the inductance of the coil are %3.1f ohms and %3.0f microH respectively',r,l)
