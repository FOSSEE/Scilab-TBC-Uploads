D=80.36;//dielectric constant//
V=0.01;//viscosity of suspension in dyn sec per cm^2//
P=10;//potential gradient in volt per cm//
v=3*10^-3;//observed velocity in cm per sec//
u=90000;
EP=(4*%pi*V*u*v)/(D*P);//Zeta potential of the catalyst in volts//
printf('Zeta potential of the catalyst=EP=%fvolts',EP);
printf('\nThe effective thickness of the double layer can be taken to be 1cm');
e=9*10^-4;
r=0.5*10^-4;
N=4*%pi*e*r^2;//total no. of charges carried by a particle//
printf('\nTotal no. of charges carried by a particle=N=2.83*10^-11');
