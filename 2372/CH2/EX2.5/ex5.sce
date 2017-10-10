clc;
clear;
ang1=-5*%pi/180;
v1=complex(120*cos(ang1),120*sin(ang1));
v2=100;
z=complex(1,7);//line impedance
i12=(v1-v2)/z;
i21=(v2-v1)/z;
s12=v1*i12';
s21=v2*i21';
sl=s12+s21;//line loss
mprintf("since p1 is negative and p2 is positive,source1 receives %3.1f W and source 2 generates %4.1f W and the real power loss in the line is %2.1f W. the real power loss in the line can be checked by:\n",abs(real(s12)),real(s21),real(sl));
r=real(z);//resistance of line
x=imag(z);//impedance of line
pl=r*abs(i12)*abs(i12);
mprintf("verifying active power loss in line,pl=%2.1f W\n",pl);
mprintf("also q1 is positive and q2 is negative, source1 delivers %4.1f var and source2 receives %4.1f var, and reactive power loss in line is %3.1f var. the reactive power loss in the line can be checked by :\n",imag(s12),abs(imag(s21)),imag(sl));
ql=x*abs(i12)*abs(i12);
mprintf("verifying reactive power loss in line, ql=%3.1f var\n",ql);
