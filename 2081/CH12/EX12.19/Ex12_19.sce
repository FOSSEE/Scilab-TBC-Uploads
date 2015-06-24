Bc=1.25*10^6
Rb=9.6*10^3
Gp=Bc/Rb
GpdB=10*log10(Gp)

EbINodB=6
EbINo=10^(EbINodB/10)

p=0.5//interference factor 
a=.85//power control accuracy factor
v=.6//voice activity factor
Y=2.55//improvement from sectorisation
M=(Gp/(EbINo))*(1/(1+p))*a*(1/v)*Y//no. of mobile users per cell
Ns=3
Nmps=M/Ns
disp(Nmps,'no. of mobile users per sector')
