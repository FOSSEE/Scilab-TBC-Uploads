clear all
clc
close

C = 8*10^-6;//in Farad
L = 8*10^-6;//in Henry
V = 25*10^3;//in V
T1 = 8;//in us time for the first peak
ohmega = 0.02*10^-6;//in sec^-1
R = sqrt((4*L/C)-(4*L^2*ohmega^2));
printf("resistance is %f ohms \n",R)
gama = R/(2*L);//in sec^-1
printf("parameter gama is %f sec^-1 \n",gama)

//Now eq for generated impulse pulse is I(t)= 156.25*10^3exp(-12.3*10^4t)sin(0.02*10^6t)A




