clear;
clc;
R=.11;
L=1.5;
c=.01;
l=150;
P=50;
V=complex(72128.8,0);
z=complex(.11,.471);
Y=complex(0,(3.14*10^(-6)));
Zc=complex(389.9,-44.925)
gama=sqrt(Y*z);
Ir=complex(230.94,-173.21);
a=gama*l;
sine=complex(.0148,.179);
cosi=complex(.9838,.0027);
Vs=(V*cosi)+(Zc*sine*Ir);
mprintf("sending end voltage is = ")
disp(Vs);
Is=((V*sine)/Zc)+(cosi*Ir);
mprintf("sending end current is = ")
disp(Is);
S=Vs*conj(Is)*10^(-6);
effi=(P/(3*real(S)))*100;
mprintf("efiiciency is = %f percentage",effi)
