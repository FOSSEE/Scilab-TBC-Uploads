// Determine the fault current and line to line voltages 
clear
clc;
Ea=1;
Z1=.25*%i;
Z2=.35*%i;
Zo=.1*%i;
Ia1=Ea/(Z1+Z2+Zo);
L=-.5+%i*.866;
Ia2=Ia1;
Iao=Ia2;
Ia=Ia1+Ia2+Iao;
Ib=25*1000/((sqrt(3)*13.2));
If=Ib*abs(Ia);
Va1=Ea-(Ia1*Z1);
Va2=-Ia2*Z2;
Va0=-Iao*Zo;
Va=Va1+Va2+Va0;
Vb1=(L^2)*Va1;
Vb2=L*Va2;
Vbo=Va0;
Vco=Va0;
Vc1=L*Va1;
Vc2=(L^2)*Va2;
Vb=Vb1 + Vb2+Vbo;
Vc=Vco+Vc1+Vc2;
Vab=Va-Vb;
Vac=Va-Vc;
Vbc=Vb-Vc;
vab=(13.2*abs(Vab))/sqrt(3);
vac=(13.2*abs(Vac))/sqrt(3);
vbc=(13.2*abs(Vbc))/sqrt(3);
disp(If,"fault current (amps)=");//Answer don't match due to difference in rounding off of digits
disp(Vab,"Vab(kV)=");//Answer don't match due to difference in rounding off of digits
disp(Vac,"Vac(kV)=");//Answer don't match due to difference in rounding off of digits
disp(Vbc,"Vbc(kV)=");//Answer don't match due to difference in rounding off of digits
