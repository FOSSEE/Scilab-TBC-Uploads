 //Ex:69
clc;
clear;
close;
r=6378;//radius of earth in km
h=35786;// in km
r_h=r+h;//height in km
E_min=5;// in degree
P=cos(E_min*3.14/180);
Q=(r/(r_h)*P);
a_mx=(asin(Q))*(180/3.14);//the theoretical max coverage angle in degree
a_mx1=E_min+a_mx;
D=(r^2)+(r_h^2)-2*r*r_h*sin(a_mx1*3.14/180);
d=sqrt(D);// in km
d1=ceil(d);//max slant range in km
c=3*10^5;// in m/s
t=2*d1/c;
printf("The round trip delay=%f millisec",t*1000);