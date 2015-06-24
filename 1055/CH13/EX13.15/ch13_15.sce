// To determine the (i) pre- fault current in line a (ii) the subtransient current in p.u (iii) the subtransient current in each phase of generator in p.u 
clear
clc;
Ia1=-.8 -%i*2.6 + .8 -%i*.4;
Ia2=-%i*3;
Iao=-%i*3;
A=-.8 -%i*2.6 + .8 +%i*2;
a=.8;
b=.6;
Ipf=a + %i*b;
Isfc=3*Ia1;
iA1=.8- %i*.4;
iA2=-%i*1;
iAo=0;
IA1=%i*iA1;
IA2=-%i*iA2;
IA=IA1 + IA2;
L=cosd(120)+ %i*sind(120);
IB=(L^2)*IA1 + IA2*L;
IC=(L^2)*IA2 + IA1*L;
disp(Ipf,"(i) pre- fault current in line a=");
disp(Isfc,"(ii) the subtransient fault current in p.u=");
disp(IA,"IA=");
disp(IB,"IB=");
disp(IC,"IC=");
