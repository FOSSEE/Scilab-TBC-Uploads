clc
clear

//input
z=7.5+(%i*10);//impedance connected to a supply in ohms
r=7.5;//resistance from impedance in ohms
x=10;//reactance from impedance in ohms
v=200;//supply voltage in volts

//calculations
i=v/z;//current taken from supply in amperes
I=(((real(i))^2)+((imag(i))^2))^0.5;//current magnitude in amperes
phi=(180/%pi)*atan(-x/r);//phase angle in degrees
PHI=-phi;//lag

//output
mprintf('the supply current is %3.0f A lagging on the voltage by %3.0f',I,PHI)
