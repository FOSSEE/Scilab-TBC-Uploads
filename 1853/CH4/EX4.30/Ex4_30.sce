
//find the equation of voltage and current 
C=10e-6;//farad..
R=300;//ohms
//i=2 sin 314t
V=100;//volts
f=50;//hertz
Xc=1/(2*%pi*f*C);
Z=sqrt(R^2+(Xc^2));
Im=2
Vm=2*Z
coso=R/Z;
o=acosd(coso);
disp('The time equation of voltage Vr  = 600sin(314t)' ,  'The time equation of voltage Vc  = 636sin(wt-90)')

