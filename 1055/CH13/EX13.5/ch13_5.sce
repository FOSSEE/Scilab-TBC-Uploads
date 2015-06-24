// determine the fault current and line to line voltages at the fault 
clear
clc;
Ea=1+ 0*%i;
Zo=%i*.1;
Z1=%i*.25;
Z2=%i*.35;
Ia1=Ea/(Z1+(Zo*Z2/(Zo+Z2)));
Va1=Ea-Ia1*Z1;
Va2=Va1;
Vao=Va2;
Ia2=-Va2/Z2;
Iao=-Vao/Zo;
I=Ia2+Iao;
If=3*Iao;// fault current
Ib=1093;// base current
Ifl=abs(If*Ib);
disp(Ifl,"Fault current(amps) =");//Answer don't match due to difference in rounding off of digits
Va=3*Va1
Vb=0;
Vc=0;
Vab=abs(Va)*13.2/sqrt(3);
Vac=abs(Va)*13.2/sqrt(3);
Vbc=abs(Vb)*13.2/sqrt(3);
mprintf("Vab=%.3f kV\n",Vab);
mprintf("Vac=%.3f kV\n",Vac);
mprintf("Vbc=%.3f kV\n",Vbc);

