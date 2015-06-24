clc

T=1473//K
k=8.614*10^-5
D0=24//cm^2/sec
Ea=4.08//eV
D=D0*exp(-Ea/(k*T))
disp(D,"D in cm^2/sec")
//a=t*log(t)-10.09*t+8350           t=1190 solving this equation
