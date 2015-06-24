clc
clear

//input
r=10;//resistance of a coil in ohms
l=0.08;//inductance of the coil in henry
v=250;//a.c. supply voltage in volts
f=50;//supply frequency in hertz

//calculations
Xl=2*%pi*f*l;//reactance of the coil in ohms
z=((r^2)+(Xl^2))^0.5;//impedance of the circuit 
I=v/z;//current in amperes
phi=acos(r/z);// phase angle in radians
PHI=(phi*180)/%pi;//phase angle in degrees

//output
mprintf('the coil will take a current of %3.2f A lagging by %3.0f degree on the voltage',I,PHI)
