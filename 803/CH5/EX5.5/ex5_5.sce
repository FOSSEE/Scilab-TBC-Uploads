clc
Bn=10^9;..//bandwidth
T=300;..//room temperature
k=1.38*10^-23;..//boltzmann constant
h=6.6256*10^-34;
f=10^9;..//frequency
Nthermal=(10*log10(k*T*Bn));..//thermal noise power
Ni=(10*log10(h*f*Bn));..//quantum noise power
disp("dB",Nthermal,"Thermal noise power");
disp("dB",Ni,"Quantum noise power");