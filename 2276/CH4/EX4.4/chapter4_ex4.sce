clc
clear

//input
//given voltage and  current equations are v=354*(sin(314*t)) volts,i=14.1*(sin((314*t)-0.5)) amperes
vmax=354;//maximum voltage in volts
imax=14.1;//maximum current in amperes
phi=0.5;//phase angle in radians
f=50;//supply frequency in hertz

//calculations
V=0.707*vmax;//voltmeter reading placed in the circuit
I=0.707*imax;//ammeter reading placed in circuit
z=V/I;//impedance of the coil in ohms
R=z*cos(phi);//resistance in ohms
xl=z*sin(phi);//reactance of coil in ohms
l=(xl/(2*%pi*f))*1000;//inductance of the coil in millihenry

//output
mprintf('the coil has a resistance of %3.0f ohm and an inductance of %3.0f mH \n the instrument readings will be %3.0f V and %3.0f A',R,l,V,I)
