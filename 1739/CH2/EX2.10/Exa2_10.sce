//Exa 2.10
clc;
clear;
close;
//Given data :
fi_o=22;//in Degree
delta=3;//relative refractive index difference in %
//Part (a) :
//Formula : NA=sin(fi_o).....(max)
NA=sind(fi_o);//Numerical Aperture(Unitless)
disp(NA,"Numerical Aperture : ");
//Part (b) :
//Formula : n2/n1=1-delta
//Let say, n2/n1=n2byn1
n2byn1=(1-delta/100);//refractive index(unitless)
//Formula : sin(fi_C)=n2/n1;
fi_c=asind(n2byn1);//in degree
disp(fi_c,"Critical Angle at core cladding interface in Degree : ");