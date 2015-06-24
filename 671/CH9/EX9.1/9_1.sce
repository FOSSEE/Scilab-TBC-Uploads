f=50
flux=0.016
S=36
P=6
N=10


m=S/P
gammaa=%pi/m
Kb=sin(m*gammaa/2)/m/sin(gammaa/2)
Nph=S*N*2/2
Ep=4.44*Kb*f*Nph*flux
kVA=Ep*N/1000
disp(kVA)

m=S/2/P
gammaa=%pi/2/m
Kb=sin(m*gammaa/2)/m/sin(gammaa/2)
Nph=S*N*2/2/2
Ep=4.44*Kb*f*Nph*flux
Eline=Ep*sqrt(2)
kVA=Ep*N*2/1000
disp(kVA)

m=S/3/P
gammaa=%pi/3/m
Kb=sin(m*gammaa/2)/m/sin(gammaa/2)
Nph=S*N*2/2/3
Ep=4.44*Kb*f*Nph*flux
Eline=Ep*sqrt(3)
kVA=Ep*N*3/1000
disp(kVA)
