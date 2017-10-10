//chapter2.example.3//
clc
clear
//core refractive indices of stepindex fibre=n1,cladding refractive indices of stepindex fibre=n2,wavelength=l,phase constant=b,maximum value of phase constant=b1,minimum value of phase constant=b2;//
n1=1.6;
n2=1.44;
l=0.8*(10^-3);
b1=(2*%pi*n1)/(l*(10^3));//in rad/mm//
b2=(2*%pi*n2)/(l*(10^3));//in rad/mm//
printf("\nmaximum value of phase constant=%f rad/mm\n",b1);
printf("\nminimum value of phase constant=%f rad/mm\n",b2);