//to determine rotational loss, no load armature current and speed and also find speed regulation and to calculate armature current for given em torque

clc;
Pout=60*1000;
eff=.85;
P_L=((1/eff)-1)*Pout;
Pin=Pout+P_L;
V=600;
I_L=Pin/V;
Rf=100;
If=V/Rf;
Ia=I_L-If;
Ra=.16;
Ea=V-Ia*Ra;
n=900;
Prot=P_L-Ia^2*Ra-V*If;disp(Prot,'rotational loss(W)');

Iao=Prot/V;disp(Iao,'no load armature current(A)');
Eao=V;
n0=n*Eao/Ea;disp(n0,'no load speed(rpm)');
reg=(n0-n)*100/n;disp(reg,'speed regulation(%)');

K=Ea/(2*%pi*n/60);    //K=Ka*phi
T=600;
Ia=T/K;disp(Ia,'reqd armature current(A)');