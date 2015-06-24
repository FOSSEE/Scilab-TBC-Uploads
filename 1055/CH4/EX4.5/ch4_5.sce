// To determine efficiency and regulation of 3 phase line
clear
clc;
R=100*.1;//Resistance of line (ohm)
Xl=2*(10^-7)*100*1000*log(200/.75);//inductance of line
X2=Xl*314;//inductive reactance
C=2*(%pi*100)*8.854*(10^-12)*100*1000*(10^6)/(log(200/.75));// capacitance per phase (micro farad)
mprintf("Using Nominal-T method\n");
Ir=20*1000/(sqrt(3)*66*.8);
Vr=66*1000/sqrt(3);
Vc=(38104*.8+ Ir*5) +%i*(38104*.6+ Ir*17.55);// voltage across condenser
Ic=%i*314*(Vc)*.9954*(10^-6);
is=Ir+Ic;
Is=abs(Ir+Ic);
Vs=abs(Vc + (is*(5 + %i*17.53)));
VR=abs(Vs*(-%i*3199)/(5-%i*3181));// no load recieving end voltage
Reg=(VR-Vr)*100/Vr;
Pl=3*(Ir*Ir*5 + Is*Is*5)/1000000;
%n=20*100/(20+Pl);
mprintf("percent regulation=%.1f  \n",Reg);
mprintf("percent efficiency=%.1f  \n\n",%n);
mprintf("Using Nominal-pi method\n");
Ir1=218.68*(.8-%i*.6);
Ic1=%i*314*.4977*(10^-6)*Vr;
Il=Ir1+Ic1;
vs1=Vr+Il*(10+%i*35.1);
Vs1=abs(vs1);
Vr1=Vs1*(-%i*6398)/(10-%i*6363);
VR1=abs(Vr1);// no load recieving end voltage
Reg2=(VR1-Vr)*100/Vr;
IL=abs(Ir1+Ic1);
Loss=3*IL*IL*10;
%n=20*100/21.388;
mprintf("percent regulation=%.2f  \n",Reg2);
mprintf("percent efficiency=%.1f  \n",%n);



