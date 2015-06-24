//Ex:66
clc;
clear;
close;
r=6378;//radius of earth in km
h=35786;// in km
r_h=r+h;//height in km
E_min=0;// in degree
P=cos(E_min*3.14/180);
Q=(r/(r_h)*P);
a_mx=(asin(Q))*(180/3.14);//the theoretical max coverage angle in degree
D=(r^2)+(r_h^2)-2*r*r_h*sin(a_mx*3.14/180);
d=sqrt(D);// in km
d1=ceil(d);//max slant range in km
printf("The theoretical max coverage angle=%f degree",a_mx);
printf("\n The max slant range=%d km",d1);