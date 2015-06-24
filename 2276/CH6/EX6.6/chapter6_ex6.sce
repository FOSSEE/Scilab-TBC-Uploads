clc
clear

//input
i=8-(%i*6);//current flowing in amperes
z=10+(%i*10);//impedance in ohms

//calculations
I=(((real(i))^2)+((imag(i))^2))^0.5;//current magnitude in amperes
Z=(((real(z))^2)+((imag(z))^2))^0.5;//magnitude of impedance in ohms
phi1=(180/%pi)*atan(-(imag(i))/(real(i)));//phase angle of current in degrees
phi2=(180/%pi)*atan(-(imag(z))/(real(z)));//phase angle of impedance in degrees
phi=-(phi2+phi1);
v=I*Z;//voltage across coil in volts

//output
mprintf('the voltage across the coil is %3.0f V leading by %3.0f degrees',v,phi)
