//Exa 2.5
clc;
clear;
close;
//Given data :
format('v',5);
NA=0.40;//Unitless
n1=1.50;//refractive index
delta=1;//relative refractive index difference in %
//Part (a) :
//Formula : NA=sin(fi_o).....(max)
fi_o_max=asind(NA);//in Degree
disp(fi_o_max,"Acceptance angle in degree : ");
//Part (b) :
//Formula : n2/n1=1-delta
n2=n1*(1-delta/100);//refractive index(unitless)
//Formula : sin(theta_C)=n2/n1;
theta_c=asind((n2/n1));//in degree
disp(theta_c,"Critical Angle at core cladding interface in Degree : ");