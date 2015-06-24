clear;
//clc();
x2d=(%i)*0.3;
xl1=(%i)*0.08;
xline=(%i)*0.55;
xl2=(%i)*0.08;

ig=0.75;
z2t=x2d +xl1 +xline + xl2;
er=1;
eint=er+ig*z2t;
e2int=sqrt(real(eint)^2 + imag(eint)^2);

x2gf=imag(x2d + xl1);
i2d=e2int/x2gf;

x2bf=imag(xl1 +xline);
i2df=er/x2bf;
tot_i2d=i2d +i2df;
printf("The total subtransient short circuit current is:%.3f pu\n",tot_i2d);

//calculation of effect of maximum dc component offset

i2g=sqrt(2)*i2d;
i2f=sqrt(2)*i2df;
tot_i=i2g+i2f;
max_sc=sqrt(tot_i2d^2+tot_i^2);

sb=50;
vlb=138*10^(3);
ilb=sb/(sqrt(3)*vlb*(10^(-6)));
isc=ilb*max_sc;

//caculation of prefault voltage behind transient reactance

x1d=(%i)*0.35;
z1t=x1d+xl1+xline+xl2;
eint1=er+ig*z1t;
e1int=sqrt(real(eint1)^2 + imag(eint1)^2);

x1gf=imag(x1d + xl1);
i1d=e1int/x1gf;

x1bf=imag(xl1 +xline);
i1df=er/x1bf;
tot_i1d=i1d +i1df;
printf("The total transient short circuit current is:%.3f pu\n",tot_i1d);

isc1=ilb*tot_i1d;

//calculation of prefault voltage behind synchronous reactance

xd=(%i)*1.25;
zt=xd+xl1+xline+xl2;

eint3=er+ig*zt;
e3int=sqrt(real(eint3)^2 + imag(eint3)^2);

x3gf=imag(xd + xl1);
i3d=e3int/x3gf;

x3bf=imag(xl1 +xline);
i3df=er/x3bf;
tot_i3d=i3d +i3df;
printf("The total synchronous short circuit current is:%.3f pu\n",tot_i3d);
