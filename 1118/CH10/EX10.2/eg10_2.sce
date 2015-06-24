clear;
//clc();
v=275*1000;
vrp=v/sqrt(3);
p=250*10^(6);
cosq=0.9;
ir1=p/(sqrt(3)*v*cosq);
ir=ir1*(cosd(25.84) + (%i)*sind(-25.84));

A=0.9855138 + 0.0027367*(%i);
D=0.9855138 + 0.0027367*(%i);
C=- 0.0000004 + 0.0004379*(%i);
B=12.37926 + 65.692432*(%i);

is=C*vrp + D*ir;
printf('the sending end current is:');
disp(is);
vsp=A*vrp + B*ir;
printf('the sending end voltage is:');
disp(vsp);
ps=real(3*vsp*conj(is));

tx_eff=p/ps;
printf("\n the transmission efficiency is:  %.3f pu\n ",tx_eff);

vnl=polar(vsp)/A;


vfl=158.77*1000;
vr=(vnl-vfl)/vfl;
printf("\n the voltage regulation is:  %.3f pu\n ",vr);
