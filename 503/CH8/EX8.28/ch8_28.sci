//to find max pu power, pu armature current, pu reactive power

clc;
Vt=1;
Xd=1.02;
Xq=.68;
Pmmax=Vt^2*(Xd-Xq)/(2*Xd*Xq);disp(Pmmax,'max pu power');
dl=.5*asind(Pmmax/(Vt^2*(Xd-Xq)/(2*Xd*Xq)));

Id=Vt*cosd(dl)/Xd;
Iq=Vt*cosd(dl)/Xq;
Ia=sqrt(Id^2+Iq^2);disp(Ia,'armature current(pu)');

Qe=Id*Vt*cosd(dl)+Iq*Vt*sind(dl);disp(Qe,'reactive power(pu)');

pf=cosd(atand(Qe/Pmmax));disp(pf,'pf');