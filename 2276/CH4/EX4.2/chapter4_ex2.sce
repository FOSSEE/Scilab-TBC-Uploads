clc
clear

//input
r=12;//resistance connected in series with a coil in ohms
rc=4;//resistance of the coil in ohms
l=0.02;//inductance of the coil in henry
v=230;//a.c. supply voltage in volts
f=50;//frequency of the supply in hertz

//calculations
R=r+rc;//total resistance of circuit in ohms
xl=2*%pi*f*l;//reactance of the coil in ohms
z=((R^2)+(xl^2))^0.5;//impedance of the circuit in ohms
i=v/z;//current in amperes
phi=(acos(r/z))*(180/(2*%pi));//angle of phase difference in degrees
vr=i*r;//voltage drop across resistor in volts
vc=i*(((rc^2)+(xl^2))^0.5);//voltage drop across coil in volts

//output
mprintf('the current taken from the supply is %3.1f A lagging by %3.1f degree.\n the voltage drops across the resistor and the coil are %3.0f V and %3.0f V',i,phi,vr,vc)
