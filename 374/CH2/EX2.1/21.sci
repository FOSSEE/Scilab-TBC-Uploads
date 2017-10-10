//chapter2.example.1//
//core radius of multimode fibre=r,relative refractive difference=d,refractive index of the fibre=n1,refractive indexof cladding=n2,wavelength=l//
r=35*(10^-6);//in metres//
n1=1.46;
d=0.015;
n2=n1-(n1*d);
printf("\nrefractive indexof cladding=%f\n",n2);
l=0.85*(10^-6);//in metres//
//expression of v number=V,total number of guided modes in the stepindex motor=M//
j=(2*%pi*r)/l;
q=sqrt((n1^2)-(n2^2));
V=j*q;
printf("\nexpression of v number =%f\n",V);
M=(V^2)/2;
printf("\ntotal number of guided modes in the stepindex motor=%f modes\n",M);
