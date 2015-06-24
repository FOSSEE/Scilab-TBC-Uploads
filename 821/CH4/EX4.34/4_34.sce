D=80.36;//dielectric constant//
V=0.01;//viscosity of suspension in dyn sec per cm^2//
P=40;//potential gradient in volt per cm//
r=0.05;//radius of capillary in cm//
u=90000;
ZP=0.05;//Zeta potential of the catalyst in volts//
FW=(P*ZP*D*3600*r^2)/(4*V*u);//amount of flow of water in cc per hour//
printf('Amount of flow of water through diaphragm=FW=%fcc per hour',FW);
