//chapter 3 example 4 b//
clc
clear
//core refractive index=n1,relative refractive index difference=d,operating wavelength=l,critical radius of curvature=Rc,cladding refractive index=n2//
d=0.03;
n1=1.500;
n2=sqrt((n1^2)-(2*d*(n1^2)));
l=0.8*(10^-6);
Rc=((3*(n1^2)*l)/(4*%pi*((n1^2)-(n2^2))^1.5))*(10^6);//critical radius of curvature//
printf("\n critical radius of curvature=%f*(10^-6).\n",Rc);