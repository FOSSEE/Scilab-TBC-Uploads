
4.28//voltage across R$C 
C=15e-6;//farad..
R=100;//ohms
V=100;//volts
f=50;//hertz
Xc=1/(2*%pi*f*C);
Z=sqrt(R^2+(Xc^2));
I=V/Z;
coso=R/Z;
sino=R/Z
o=acosd(coso);
o=asind(sino)
Vr=I*R;
Vc=I*Xc;
AP=V*I*coso
RP=V*I*sino
APP=V*I;
disp('The time equation of current i  = (0.426)1.414sin(314t-64.34)' ,  'Apparent power ='+string(APP)+'vars  '  ,  'ACTIVE POWER ='+string(AP)+ ' watts'  )


