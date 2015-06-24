clc
clear

//input
z1=5+(%i*5);//impedance 1 in ohms
z2=10-(%i*15);//impedance 2 in ohms
//impedances 1 and 2 are in series
v=240;//supply voltage in volts

//calculations
zt=z1+z2;//total impedance in ohms
i=v/zt;//current taken in amperes
v1=z1*i;//voltage 1 in volts
V1=(((real(v1))^2)+((imag(v1))^2))^0.5;//voltage magnitude in volts
phi1=(180/%pi)*atan((imag(v1))/(real(v1)));//phase angle 1 in degrees
v2=i*z2;//voltage 2 in volts
V2=(((real(v2))^2)+((imag(v2))^2))^0.5;//voltage magnitude in volts
phi2=(180/%pi)*atan(-(imag(v2))/(real(v2)));//phase angle 2 in degrees
I=(((real(i))^2)+((imag(i))^2))^0.5;//current magnitude in amperes

//output
mprintf('the supply current is%3.1f A and the two voltages are %3.0f V and %3.0f V leading by %3.1f degrees and lagging by %3.1f degrees respectively',I,V1,V2,phi1,phi2)
