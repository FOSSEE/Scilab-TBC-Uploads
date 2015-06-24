//Impulse invariant mappings
//(a)converting H(s)=4s+7/s^2+5s+4 to H(z) using impulse invariance
s=%s;
z=%z;
HS=(4*s+7)/(s^2+5*s+4);
pfss(HS)
ts=0.5;
HZ=3*z/(z-%e^(-4*ts))+z/(z-%e^(-ts))
//(b)converting H(s)=4s+7/s^2+5s+4 to H(z) using impulse invariance
HS1=4/((s+1)*(s^2+4*s+5))
pfss(HS1);
HZ1=2*z/(z-%e^-ts)+(2*1.414*z^2*cos(-0.75*%pi)-2*1.414*(z/%e)*cos(0.5-0.75*%pi))/(z^2-2*(z/%e)*cos(0.5)+%e^-2)
