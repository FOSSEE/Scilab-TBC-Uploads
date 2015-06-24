clc;
//e.g 26.6
fo=455*10**3;
BW=10*10**3;
XL=1255;
Qo=fo/BW;
R=XL/Qo;
L=XL/(2*%pi*fo);
C=1/(XL*2*%pi*fo);
Zp=L/(C*R);
disp('Kohm',Zp*10**-3,"Zp=");
