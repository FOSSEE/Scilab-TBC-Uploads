clc
clear

//input
rl=10;//resistance of an inductor in ohms
l=0.05;//inductaance of an inductor in henry
rc=20;//resistance in series with a capacitor in ohms
c=150*(10^-6);//capacitance of a capacitor in farad
///inductor is in parallel with the series circuit containing a resistor and a capacitor
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
xl=2*%pi*f*l;//inductive reactance in ohms
z1=((rl^2)+(xl^2))^0.5;//impedance of the inductor in ohms
i1=v/z1;//current in inductor in amperes
phi1=rl/z1;//power factor of inductor
xc=1/(2*%pi*f*c);//capacitive reactance in ohms
z2=((rc^2)+(xc^2))^0.5;//impedance of series circuit in ohms
i2=v/z2;//current in series circuit in amperes
phi2=rc/z2;//power factor of series circuit
i=(i1*phi1)+(i2*phi2);//total in phase component in amperes
P=(v*i);//total power in watts

//output
mprintf('the active power taken from the supply is %3.0f W',P)
