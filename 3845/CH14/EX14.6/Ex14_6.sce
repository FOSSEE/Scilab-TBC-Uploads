//Example 14.6
d=0.8*10^-2;//Thickness of pan bottom (m)
r=(14/2)*10^-2;//Radius of pan (m)
A=%pi*r^2;//Area of pan bottom (m^2)
k=220;//Thermal conductivity of aluminum (J/s.m.C)
m=1*10^-3;//Mass of water (kg)
L_v=2256*10^3;//Latent heat of vaporization (J/kg)
Q=m*L_v;//Heat of vaporization of 1g of water (J)
rate=Q/1;//Rate of heat transfer,Q/t, (J/s)
delta_T=rate*d/(k*A);//Temperature difference (C)
printf('Temperature difference across the bottom of the pan = %0.2f C',delta_T)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
