//to calculate net power op,eff,line current and pf

clc;
j=sqrt(-1);
Zs=(1/3)*(.3+j*6);
phi=atand(imag(Zs)/real(Zs));
Vt=400/sqrt(3);
Ef=600/sqrt(3);
a=sqrt(Vt^2+Ef^2-2*Vt*Ef*cosd(phi));
Ia=a/abs(Zs);disp(Ia,'line current(A)');
B=acosd((Vt^2+a^2-Ef^2)/(2*Vt*a));

phi=90-(90-atand(imag(Zs)/real(Zs)))-B;disp(cosd(phi),'pf');
Pein=Vt*Ia*cosd(phi);
Ra=.1;
b=Ia^2*Ra;
loss=2400;
Pmout=Pein-loss/3-b;disp(Pmout,'net power op(W)');
eff=Pmout/Pein;
disp(eff*100,'efficiency(%)');