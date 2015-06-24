V=600
Ia=40
R=0.5
Ea=V-Ia*R
n=500
Ka=Ea/Ia/2/%pi/n*60
T=Ka*Ia*Ia

n2=450
T=T*n2*n2/n/n
Ia=sqrt(T/Ka)
Ea=Ka*Ia*2*%pi*n2/60
Rtotal=(V-Ea)/Ia
Rext=Rtotal-R
disp(Rext)
