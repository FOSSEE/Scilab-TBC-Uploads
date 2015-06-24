P=4
A=4
ra=0.145
l=0.21
Z=2*33*11
K=Z*P/2/%pi/A
disp(K)

Ap=2*%pi*ra/P*0.7*l
Barc=0.8
flux=Ap*Barc
n=1200
Ea=K*flux*2*%pi*n/60
disp(Ea)

Ia=240
Ic=Ia/A
disp(Ic)

T=K*flux*Ia
disp(T)
Pg=Ea*Ia
disp(Pg)
