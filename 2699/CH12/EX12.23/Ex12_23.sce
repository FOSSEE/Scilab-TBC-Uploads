//EX12_23 Pg-41.43
clc 
clear
disp("equation of a frequency modulated v=A*sin(wc*t+mf*sin(wm*t))")
disp("or v=A*sin(wc*t-fd/fm*cos(wm*t)) where fd=frequency deviation")
disp("Now v=50*sin(5e8*t-10*cos(1000*t))")
A=50;//peak value of the modulating signal
wc=5e8;
mf=10;
wm=1000;
fc=wc/(2*%pi);//carrier frequency
printf("\n carrier frequency fc=%.2f MHz \n",fc*1e-6)
fm=wm/(2*%pi);//modulating frequency
printf(" modulating frequency fc=%.2f Hz \n",fm)
//fd_max=maximum frequency deviation
fd_max=mf*fm;//since mf=fd_max_/fm 
printf(" \n modulation index mf=%.0f",mf) 
printf("\n maximum deviation fd_max=%.2f Hz \n",fd_max)
Vrms=A/sqrt(2);//rms value of the modulating signal
R=75;//wave resistance
P=Vrms^2/R;
printf("\n Power dissipated by the wave in resistance P=%.2f W",P)
