//Ex:3.30
clc;
clear;
close;
n1=1.52;// core refractive index
n2=1.48;// cladding  refractive index
a=45;// core radius in um
y=0.85;// wavelength in um
dl=(n1-n2)/n1;// relative refractive index
x=(asin(n2/n1))*(180/3.14);// critical angle in degree
NA=sqrt(n1^2-n2^2);// numerical aperture
a_c=(asin(NA))*(180/3.14);// acceptance angle in degree
a_s=3.14*(n1^2-n2^2);// solid acceptance angle
v=(2*3.14*a*0.34)/y;// normalise v-number
M=v^2/2;// number of guided modes
a1=5;// for single mode step fiber
v1=(2*3.14*a1*0.34)/y;
M1=v1^2/2;
R=M-M1;// reduction in modes
printf("The max value of D =%f",dl);
printf("\n The critical angle =%f degree",x);
printf("\n The acceptance angle =%f degree",2*a_c);
printf("\n The solid acceptance angle =%f degree",a_s);
printf("\n The numerical aperture =%f",NA);
printf("\n The normalise v-number =%f",v);
printf("\n The number of guided modes =%d",M);
printf("\n The reduction in modes =%d",R);