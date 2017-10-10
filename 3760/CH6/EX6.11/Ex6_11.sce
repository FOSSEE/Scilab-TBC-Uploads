clc;
P=4;
r1=0.15;
x1=0.45;
r2=0.12;
x2=0.45;
Xm=28.5;
s=0.04;
V=400;
f=50;
Pfixed=400;

//from problem 6.10
Re=0.1476;
Xe=0.443;
r2=0.12;
x2=0.45;

a=Xm/(x2+Xm);
//Ve=a*V1;
Wr=(4*%pi*f)/P;
b=(3/Wr)*(1/2)*(1/((Re)+(sqrt((Re*Re)+((x2+Xe)*(x2+Xe))))));
//Tem=b*Ve*Ve

//for part a
V1=230;
Ve1=a*V1;
Tem1=b*Ve1*Ve1;
mprintf('for part a \n maximum internal torque developed is %f Nm \n',Tem1);

//for part b
V2=115;
Ve2=a*V2;
Tem2=b*Ve2*Ve2;
mprintf('for part b \n maximum internal torque developed is %f Nm \n',Tem2);

//for f=25 Hz
Xe1=(1/2)*Xe;
x21=(1/2)*x2;
Ws1=(1/2)*Wr;


//for part c
V3=115;
Ve3=a*V3;
Tem3=(3/Ws1)*Ve3*Ve3*(1/2)*(1/((Re)+(sqrt((Re*Re)+((x21+Xe1)*(x21+Xe1))))))
mprintf('for part c \n maximum internal torque developed is %f Nm \n',Tem3);

//for f=5 Hz
Xe2=(1/10)*Xe;
x22=(1/10)*x2;
Ws2=(1/10)*Wr;


//for part d
f3=5; //f3=(1/10)*f
V4=23;
Ve4=a*V4;
Tem4=(3/Ws2)*Ve4*Ve4*(1/2)*(1/((Re)+(sqrt((Re*Re)+(((x22+Xe2)*(x22+Xe2)))))))
mprintf('for part d \n maximum internal torque developed is %f Nm \n',Tem4);













