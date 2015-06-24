P=4
V=230
Z=888
Ra=0.8
flux=5.4E-3
A=2

Il=2
If=0.6
Ia=Il-If
Ea=V-Ia*Ra
n0=Ea*60/flux/Z/P*A
disp(n0)

T=29.6
Ia=T*2*%pi/flux/Z/P*A
Il=Ia+If
disp(Il)
Ea=V-Ra*Ia
n=Ea*60/flux/Z/P*A
disp(n)
sr=(1-n/n0)*100
disp(sr)
