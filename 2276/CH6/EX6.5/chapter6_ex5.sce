clc
clear

//input
r=20;//resistance of an inductor in ohms
x=15;//reactance of an inductor in ohms
v=250;//supply voltage in volts

//calculations
z=((r^2)+(x^2))^0.5;//magnitude of impedance in ohms
phi=(180/%pi)*atan(x/r);//phase angle in degrees
i=v/z;//current magnitude in amperes

//output
mprintf('the current will be %3.0f A lagging by %3.0f degrees',i,phi)
