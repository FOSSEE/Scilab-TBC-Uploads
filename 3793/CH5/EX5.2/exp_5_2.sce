clear;
clc;
V=33;
S=45;
pf=0.8;
x=10;
P=S*pf;
z=complex(0,10);
I=(P*1000)/(sqrt(3)*V*pf);
Vp=V/sqrt(3);
Ia=I*(complex(0.8,-0.6));
E=(Vp*1000)+(z*Ia);
mprintf("Excitation voltage per phase %.3f + %.3f\n",real(E),imag(E));
Vv=sqrt((real(E)^2)+(imag(E)^2));
del=asind((10*10)/((Vv*10^(-3))*Vp));
x=Vv*cosd(del);
y=Vv*sind(del);
VV=complex(x,y);
II=(VV-(Vp*1000))/complex(0,10);
pf1=cosd(atand(imag(II)/real(II)));
mprintf("Armature current  %.3f + %.3f\n",real(II),imag(II));
mprintf("load angle %f\n",del);
mprintf("power factor %f\n",pf1);
maxdel=90;
x1=Vv*cosd(maxdel);
y1=Vv*sind(maxdel);
VV1=complex(x1,y1);
II1=(VV1-(Vp*1000))/complex(0,10);
pf2=cosd(atand(imag(II1)/real(II1)));

Pmax=(3*Vp*(Vv*10^(-3)))/10;
mprintf("Maximum power %f",Pmax);
p=P/3; // at minimum excitation pf is unity there fore power  is per phase

E1=(p*10)/Vp;
x2=E1*cosd(maxdel);
y2=E1*sind(maxdel);
VV2=complex(x2,y2);
II2=((VV2-(Vp))*1000)/complex(0,10);
pf3=cosd(atand(imag(II2)/real(II2)));


