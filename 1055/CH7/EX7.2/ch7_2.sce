// To calculate the maximum Sag
clear
clc;
D=1.95 + 2.6;// overall diameter(cm)
A=4.55*(10^-2);// area(m_2)
d=19.5;//diameter of conductor(mm)
r=d/2;//radius of conductor(mm)
Wp=A*39;//wind pressure(kg/m_2)
t=13;//ice coating(mm)
US=8000;// ultimate strength(kg)
Aice=%pi*(10^-6)*((r+t)^2 - r^2);//area section of ice (m_2)
Wice=Aice*910;
W=(sqrt((.85+Wice)^2 + Wp^2));// total weight of ice (kg/m)
T=US/2;// working teansion (kg)
c=T/W;
l=275;//length of span(m)
Smax=l*l/(8*c);
mprintf("Maximum sag=%.1f metres\n",Smax);
