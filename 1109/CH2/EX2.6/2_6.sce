clear;
clc;
Zoc=286*exp(%i*(-%pi/(180/40)));Zsc=1520*exp(%i*(%pi/(180/16)));l=50;f=700;
w=2*%pi*f;
Zo=sqrt(Zoc*Zsc);
S=real(Zo);
T=imag(Zo);
printf("-Characteristic impedance of transmission line is Zo = %f /_ %f ohms\n",round(abs(Zo)*100)/100,atan(T,S)*180/%pi);
A=atanh(sqrt(Zsc/Zoc));
P=A/l;
U=real(P);
V=imag(P);
printf("-Propagation constant = %f /_ %f\n",fix(abs(P)*1000)/1000,round(atan(V,U)*180*100/%pi)/100)
Z=P*Zo;
R=real(Z);
L=(imag(Z))/w;
printf("-R = %f ohms/km\n",round(R*100)/100);
printf("-L = %f mH/km\n",fix(L*(10^3)*100)/100);
Y=P/Zo;
G=real(Y);
C=(imag(Y))/w;
printf("-G = %f micromhos/km\n",fix(G*(10^6)*100)/100);
printf("-C = %f microfarads/km",fix(C*(10^6)*10^5)/10^5);


