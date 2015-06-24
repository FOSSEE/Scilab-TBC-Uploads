//Find current and voltage of sending end and percentage regulation
clear;
clc;
//soltion
//given
R=0.1425*200;//ohm//total resistance
X=0.49*200;//ohm//reactance
Y=8*10^-4;//S//total susecptance
Vrl=132*1000;//V
pf=0.8;//power factor
P=50*10^6;//MVA
Vr=round(Vrl/sqrt(3));
Ir_=(P/(sqrt(3)*Vrl));
Ir=Ir_*complex(pf,-0.6);
Icr=0.5*(%i*Y)*Vr;
Il=Ir+Icr;
Z=complex(R,X);//ohm//Load impedance
Vs=Vr+Il*(Z);
theta=atand((imag(Vs)/real(Vs)));
printf("Sending end voltage= %.3f∠%.3f°\n",abs(Vs),theta);
Vls=sqrt(3)*abs(Vs)/1000;
printf("Sending end line voltage= %.2fkV\n",Vls);
M=1+0.5*(%i*Y)*Z;//THE BOOK HAS USED 0.9962 BUT IT IS 0.962
Vrlo=Vls/abs(M);
Pr=((Vrlo*1000-Vrl)*100)/Vrl;
printf("Percentage voltage regulation= %.1f percent\n",Pr);
//THE ANS OF THE REGULATION IS 21.4% BECAUSE OF TYPOLOGICAL ERROR
