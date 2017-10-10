//chapter 3 example 4//
clc
clear
//core radius of monomode fibre=a,core refractive index=n1,refractive index difference between core and cladding=d,operating wavelength=l,critical radius of curvature=Rc,cutoff wavelength=Lc//
a=4*(10^-6);//in mts//
n1=1.500;
d=0.003;
l=1.55*(10^-6);//in mts//
Lc=(((2*%pi*a*n1)*(sqrt(2*d)))/2.405)*(10^6);//cutoff wavelength//
printf("\n cutoff wavelength=%f*(10^-6)m.\n",Lc);
lc1=Lc*(10^-6);
h=(2.748-(0.996*(l/lc1)));
k=h^-3;
v=(20*l)/(d^1.5);
Rc=k*v;
printf("\n critical radius=%f .\n",k);