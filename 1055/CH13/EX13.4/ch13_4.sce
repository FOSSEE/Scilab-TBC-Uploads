//Determine the fault current and line to line voltage at the fault .
clear
clc;
Ea=1;
L=(cosd(120)+ %i*sind(120));
Z1=%i*.25;
Z2=%i*.35;
Ia1=Ea/(Z1+Z2);
Ia2=-Ia1;
Iao=0;
Ib1=(L^2)*Ia1;
Ib2=L*Ia2;
Ibo=0;
Ib=Ib1+Ib2 +Ibo;
Iba=1093;
If=Iba*abs(Ib);
Va1=Ea-(Ia1*Z1);
Va2=-Ia2*Z2;
Vao=0;
Va=Va1+Va2+Vao;
Vb=(L^2)*Va1 + L*Va2;
Vc=Vb;
Vab=Va-Vb;
Vac=Va-Vc;
Vbc=Vb-Vc;
mprintf("Fault current =%.2f amps\n",If);//Answer don't match due to difference in rounding off of digits
vab=(abs(Vab)*13.2)/sqrt(3);
vbc=(abs(Vbc)*13.2)/sqrt(3);
vac=(abs(Vac)*13.2)/sqrt(3);
mprintf("Vab=%.2f kV\n",vab);
mprintf("Vac=%.2f kV\n",vac);
mprintf("Vbc=%.2f kV\n",vbc);
