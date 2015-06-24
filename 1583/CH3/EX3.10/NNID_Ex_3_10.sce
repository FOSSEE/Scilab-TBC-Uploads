clc
//Chapter 3:Design of low noise networks
//example 3.10 page no 86
//given
ensqr=8*10^-16//noise voltage
insqr=9*10^-25//rms noise current
Rs=10*10^4//sourse resistance
k=1.37*10^-23//Boltzmmans constant
T=290//tempreture
F=(ensqr+(insqr*Rs^2))/(4*k*T*Rs)//amplifier noise factor
disp(F,'the amplifier noise factor is ')
