//Example 2.29 :area and percentage error
clc;
clear;
close;
//given data 
v1=18;//kV
c1=60;//pF
v2=2;//
q=v2*10^3*c1*10^-12;//
cs=q/(v1*10^3);//F
d=2.5;//cm
eo=8.854*10^-12;//
a=((cs*d*10^-2)/(eo));//
disp(round(a*10^4),"area is,(cm^2)=")
c2=50;//pf
x=c1-c2;//
stf=((v2*10^3)^2*x*10^-12);//
v=sqrt(stf/(x*10^-12*2))/1000;//kV
c3=c2+(x/2);//pf
x1=c3/(cs*10^12);//
V1=(x1+1)*v//
V=10*sqrt(2);//V
er=((V-V1)/V1)*100;//
disp(er,"error is ,(%)=")
