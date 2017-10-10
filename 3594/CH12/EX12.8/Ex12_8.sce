
clc
//given
N=120//rpm
k=3.5//ft
Ef=2500//ft lb
Ks=.01
g=32.2//ft/s^2
w=%pi*N/30//angular velocity
W=g*Ef/(w^2*k^2*Ks*2240)//Weight of flying wheel
printf("\nWeight of flying wheel, W = %.2f tons",W)
