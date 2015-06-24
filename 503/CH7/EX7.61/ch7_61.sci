//to calculate rotational loss ,armature resistance,eff,line current and speed

clc;
Pshaft=20000;
eff=.89;
P_L=((1/eff)-1)*Pshaft;
Pin=Pshaft+P_L;
V=250;
I_L=Pin/V;disp(I_L,'line current(A)');
Rf=125;
If=V/Rf;
Ia=I_L-If;

Ploss=P_L/2;
Ra=Ploss/Ia^2;disp(Ra,'armature resistance(ohm)');
Psh=V*If;
Prot=Ploss-Psh;disp(Prot,'rotational loss(W)');
Ea=V-I_L*Ra;
n=850;
Ia=100;

Pc=Ia^2*Ra;
P_L=Pc+Ploss;
Pin=V*I_L;
eff=(1-P_L/Pin)*100;
Ea1=V-Ia*Ra;
n1=n*Ea1/Ea;disp(n1,'speed(rpm)');