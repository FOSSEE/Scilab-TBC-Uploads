//to calculate eff of motor and generator

clc;
Iag=60;
Ia=15;
Iam=Iag+Ia;
Vt=250;
Ram=.2;
Rag=.2;
Pstray=.5*(Vt*Ia-Iam^2*Ram-Iag^2*Rag);
Ifm=2;
Pinm=Vt*(Iam+Ifm);
P_Lm=(Pstray+Vt*Ifm)+Iam^2*Ram;
eff_M=1-(P_Lm/Pinm);disp(eff_M*100,'efficiency of motor(%)');

Iag=60;
Ifg=2.5;
P_Lg=(Pstray+Vt*Ifg)+Iag^2*Rag;
Poutg=Vt*Iag;
eff_G=1-(P_Lg/(Poutg+P_Lg));disp(eff_G*100,'efficiency of generator(%)');
