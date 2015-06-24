    //EXAMPLE 2-54  PG NO-98
C=159*10^-6;     //capacitor
F=50;           //frequency
Xc=1/(2*%pi*F*C);
Z=8.94;               //impedance
V=100;               //voltage
I=V/Z;             //Current
PF=0.894           //power factor
S=V*I;    
P=V*I*PF;
Q=V*I*(-0.447);
disp(' CURRENT is = '+string(P)+' A');   
disp(' APPARENT POWER is = '+string(S)+' VA');   
disp(' active power is = '+string(P)+' W');   
disp(' reactive power is = '+string(Q)+' vars');   
