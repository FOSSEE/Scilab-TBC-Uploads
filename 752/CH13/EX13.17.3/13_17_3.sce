clc;
//page no 515
//prob no. 13.17.3
Z0=600;Zl=73;//in ohm
F=0.9;
QF=(2*%pi*F)/4;
//For matching, the effective load impedance on the main line must equal the characteristic impedance of the mail line
Zl1=Zl;
Z01=sqrt(Zl1*Zl);
Tl=(Zl-Z01)/(Zl+Z01);
VI=1;//reference voltage
Vi=VI*%e^(%i*QF);
Vr=Tl*VI*%e^-(%i*QF);
V_in=Vi+Vr;
I_in=(Vi-Vr)/Z01;
Z_in=V_in/I_in;
disp('ohm',Z_in,'The input impedance is');
//the voltage reflection coeff is
TL_F=(Z_in-Z0)/(Z_in+Z0);
//the VSWr is given as
VSWR_F=(1+TL_F)/(1-TL_F);
disp(VSWR_F,'The VSWR is');