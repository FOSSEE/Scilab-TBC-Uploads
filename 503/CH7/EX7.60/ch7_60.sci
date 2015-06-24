//to determine load torque and motor eff,armature current for max motor eff and ots value

clc;
V=250;
Ia=35;
Ra=.5;
Ea=V-Ia*Ra;
Poutg=Ea*Ia;
Prot=500;
Pout_net=Poutg-Prot;
n=1250;
w=2*%pi*n/60;
T_L=Pout_net/w;disp(T_L,'load torque(Nm)');

Rf=250;
If=V/Rf;
I_L=If+Ia;
Pin=I_L*V;
eff=Pout_net*100/Pin;disp(eff,'efficiency(%)');

Pk=Prot+V*If;
Ia=sqrt(Pk/Ra);disp(Ia,'armature current(A)');
Tloss=2*Pk;
I_L=If+Ia;
Pin=I_L*V;
eff_max=1-(Tloss/Pin);disp(eff_max*100,'max efficiency(%)');

Ea1=V-Ia*Ra;
n1=n*Ea1/Ea;disp(n1,'speed(rpm)');
w=2*%pi*n1/60;
Poutg=Ea1*Ia;
Pout_net=Poutg-Prot;
T_L=Pout_net/w;disp(T_L,'load torque(Nm)');
