D=78;//dielectric constant//
V=0.009;//viscosity of suspension in dyn sec per cm^2//
P=3.2;//potential gradient in volt per cm//
t=38.2;
d=0.033;//standard distance between electrodes in cm//
u=90000;
EP=(4*%pi*V*u*d)/(D*t*P);//Electrokinetic potential of the catalyst in volts//
printf('Electrokinetic potential of the catalyst=EP=%fvolts',EP);
