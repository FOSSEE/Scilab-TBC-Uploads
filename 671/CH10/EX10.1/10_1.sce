P=6
S=36
coilside=2
N=8
A=2
d=0.25
l=0.18
Ia=10
avgflux=0.8
n=1200

Z=S*coilside*N
flux=%pi*d/P*l*avgflux
Ea=flux*n*Z/60*P/A
Pm=Ea*Ia
disp(Pm)
T=Pm/2/%pi/n*60
disp(T)
