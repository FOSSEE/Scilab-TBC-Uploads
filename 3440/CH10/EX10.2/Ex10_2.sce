clc

alpha=10^4//cm^-1
R=0.1
Px=1
P0=2
x=(-1/alpha)*log(Px/(P0*(1-R)))
disp(x,"x in meter is =")
