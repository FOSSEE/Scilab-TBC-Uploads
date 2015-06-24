clc;
//page no 513
//prob no. 13.17.1
VSWR=2;l_min=0.2;Z0=50;
Ql=((4*l_min )- 1)*%pi;
tl=(VSWR-1)/(VSWR+1);
Tl=tl*%e^(%i*Ql);
Zl=Z0*(1+Tl)/(1-Tl);
disp('ohm',real(Zl),'a) The equivalent  series resistance is');
disp('ohm',imag(Zl),'The equivalent  series reactance is');
disp('The minus sign indicate the capacitive reactance');
Yl=1/Zl;
disp('ohm',1/real(Yl),'b) The equivalent  parallel resistance is');
disp('ohm',1/imag(Yl),'The equivalent  parallel reactance is');