       //EXAMPLE 2-87    PG NO-127  
Wo=1000;
C=20*10^-6;
R=2;
V=10;
L=1/((Wo^2)*C);
Q=(Wo*L)/R;
I=V/R;
Vr=I*R;
VL=Q*V;
Vc=Q*V;
disp(' INDUCTANCE is = '+string(L)+' H');
disp(' Q is = '+string(Q)+' ');
disp(' CURRENT(I) is = '+string(I)+' A');
disp('VOLTAGE ACROSS RESISTANCE is = '+string(Vr)+' V');
disp('VOLTAGE ACROSS INDUCTANCE is = '+string(VL)+' V');
disp(' VOLTAGE ACROSS CAPACITANCE is = '+string(Vc)+' V');
