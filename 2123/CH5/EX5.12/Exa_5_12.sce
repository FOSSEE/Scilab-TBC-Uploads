//Example No. 5.12
clc;
clear;
close;
format('v',6);

//Given Data : 
V=230;//V
f=50;//Hz
Rf=200;//ohm
Ra=0.3;//ohm
T=50;//N-m
N=900;//rpm
Kv=0.8;//V/A-rad/s
Kt=0.8;//N-m/A^2
Vm=V*sqrt(2);//V
Vf=2*Vm/%pi;//V
If=Vf/Rf;//A
disp(If,"Field current in A :");
//T=Kt*If*Ia
Ia=T/Kt/If;//A
omega=N*2*%pi/60;//rad/s
Eb=Kv*omega*If;//V
Va=Eb+Ia*Ra;//V
//Va=Vm/%pi*(1+cosd(alfa_a))
alfa_a=acosd(Va/Vm*%pi-1);//degree
disp(alfa_a,"Fringe angle of converter in degree : ");
Pout=Ia*Va;//W
Iin=sqrt(2/2/180*Ia^2*integrate('1','omega',alfa_a,180));
VAin=V*Iin;//VA
pf_in=Pout/VAin;//lagging
disp(pf_in,"Power factor of convertyer(lagging) : ")
