//Exa 2.4
clc;
clear;
close;
//Given data :
format('v',5);
delta=1;//relative refractive index difference in %
n1=1.55;//refractive index
n2=1.51;//refractive index
//Formula : NA=sqrt(n1^2-n2^2);
NA=sqrt(n1^2-n2^2)
disp(NA,"Numerical Aperture of the fibre : ");
//Formula : NA=sin(fi_o).....(max)
fi_o_max=asind(NA);//in Degree
disp(fi_o_max,"Acceptance angle in degree : ");