//to clculate pf angle, torque angle,equivalent capicitor and inductor value

clc;
of1=250;
scr=.52;    //short ckt ratio
of2=of1/scr;
r=25*10^6;
V=13000;
Ia=r/(sqrt(3)*V);
Isc=Ia*of1/of2;
Xs=V/(sqrt(3)*Isc);
Xb=V/(sqrt(3)*Ia);
Xsadj=Xs/Xb;

f=50;
If=200;
Ef=V*If/of1;
Vt=V/sqrt(3);
Ia=(Vt-Ef/sqrt(3))/Xs;
dl=0;disp(dl,'torque angle(deg)');
pf=90;disp(pf,'pf angle(deg)');
L=(V/(sqrt(3)*Ia))/(2*%pi*f);
disp(L,'inductor value(H)');

If=300;
Eff=V*If/of1;
Vt=Ef/sqrt(3);
Ia=(Eff/sqrt(3)-Vt)/Xs;
dl=0;disp(dl,'torque angle(deg)');
pf=90;disp(pf,'pf angle(deg)');
c=1/((V/(Ia))*(2*%pi*f));
disp(c,'capacitor value(F)');
