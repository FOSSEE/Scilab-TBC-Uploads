//Ex:8.21
clc;
clear;
close;
n1=1.48;// core refractive index
n2=1.46;// cladding refractive index 
NA=sqrt(n1^2-n2^2);// numerical aperture
xa=(asin(NA))*(180/%pi);// acceptance angle in degree
nc=NA^2;// coupling efficiency
printf("The  acceptance angle =%f degree", xa);
printf("\n The coupling efficiency =%f %%", nc*100);