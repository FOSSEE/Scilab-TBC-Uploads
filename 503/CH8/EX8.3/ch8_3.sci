//to calculate syn chronous reactance ,leakage reactance,voltage regulation

clc;
If=[50 75 100 125 150 162.5 200 250 300];
Voc=[6.2 8.7 10.5 11.6 12.8 13.7 14.2 15.2 15.9];
plot(If,Voc);
xlabel('If(A)');
ylabel('Voc(V)');

r=10*10^6;    //rating
V=13000;
Ia=r/(sqrt(3)*V);
I_SC=688;    //corresponding to V
Xs=V/(sqrt(3)*I_SC);disp(Xs,'sync reactance(ohm)');
V_a=1200;
Xl=V_a/(sqrt(3)*Ia);disp(Xl,'leakage reactance(ohm)');
Ifar=90;
Er=complex(V,sqrt(3)*Ia*Xl);
If=185;    //corresponding to Er
Iff=sqrt((If+Ifar*sind(40.5))^2+(Ifar*cosd(40.5))^2);
Eff=15200;    //corresponding to Iff
vr=(Eff/V-1)*100;disp(vr,'voltage regulation(%)');

Xsadj=Xs*complex(.8,-.6);j=sqrt(-1);
Ef=(V+sqrt(3)*Ia*Xsadj);
If=(150/13)*abs(Ef);
Vtoc=14800;    //corresponding to If
vr=(Vtoc/V-1)*100;disp(vr,'voltage regulation(%)');
