clear;
//clc();
s=15;
s1=10;
xg1=(%i)*0.1;
xg1_pu=xg1*s/s1;

xg2=(%i)*0.075;
s2=5;
xg2_pu=xg2*s/s2;

xt1_pu=(%i)*0.06;
z=5+(%i)*20;
vl=33;
z_pu=z*s/vl^2;
//printf("%z",z_pu);

//three phase fault Fa

x1=(%i)*0.15;
x2=(%i)*0.225;

ze_pu=xt1_pu+(x1*x2/(x1+x2));
Ssc=s/(imag(ze_pu));
ifault=Ssc*1000/(sqrt(3)*vl);
printf("The fault current is:%.2f A\n",ifault);

//three phase fault at phase b

xt=0.06887 + (%i)*0.27548;
ze_pu2=xt1_pu+(x1*x2/(x1+x2)) +xt;
z_pu=sqrt(real(ze_pu2)^2 + imag(ze_pu2)^2);
fb=s/z_pu;

ifault=fb*1000/(sqrt(3)*vl);
printf("The fault current is:%.2f A",ifault);
