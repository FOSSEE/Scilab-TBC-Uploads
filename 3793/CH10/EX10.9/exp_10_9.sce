clear;
clc;
s=30;
v=22;
E=1;
Zf=6.6;
Zg=13.2;
Z0=complex(.062,.43);
Z1=complex(.161,.535);
Z2=Z1;
Zff=.409;
Zgp=(Zg*s)/v^2;
Ia=E/(Z1+Zff);
absIa=abs(Ia);
mprintf("Absolute Ia=%.3f\n",absIa);
angleIa=atand(imag(Ia)/real(Ia));
mprintf("Abngle of Ia=%.3f\n",angleIa);
a=complex((-.5),.866);
aa=a^2;
anglea=atand(imag(aa)/real(aa));
angleaa=atand(imag(a)/real(a));
angleIb=angleIa+(anglea);
disp(anglea)

mprintf("Angle of Ib=%.3f\n",angleIb);
angleIc=angleIa+(angleaa);

mprintf("Angle of Ic=%.3f\n",angleIc);
Va=E-(Zff*Ia);
absVa=abs(Va);
mprintf("Absolute Va=%.3f\n",absVa);
angleVa=atand(imag(Va)/real(Va));
mprintf("Angle of Va=%.3f\n",angleVa);
angleVb=angleVa+(anglea);
mprintf("Angle of Vb=%.3f\n",angleVb);
angleVc=angleVa+(angleaa);
mprintf("Angle of Vc=%.3f",angleVc);




