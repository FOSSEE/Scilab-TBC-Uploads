
RL=100
Zo=50
PM=0.05
c=3*10^8
f=900*10^6
lambda=c/f
Z1=sqrt(RL*Zo)
l=lambda/4
fractional_bandwidth=2-4/%pi*acos(abs(2*PM*sqrt(Zo*RL)/(RL-Zo)/sqrt(1-PM^2)))
printf("\nZ1=%f ohm\nl=%.4f m\nfractional bandwidth=%.7f",Z1,l,fractional_bandwidth)