//Example 17.4
//Torque and Horsepower
//Page No. 614
clc;clear;close;

w=12;                    //in inches
hi=0.8;                    //in inches
hf=0.6;                    //in inches
D=40;                    //in inches
N=100;                    //in rpm
R=D/2;
dh=abs(hf-hi);
e1=log(hi/hf);
r=(hi-hf)/hi;
sigma=20*e1^0.2/1.2;
Qp=1.5;                        //no unit
P=2*sigma*w*(R*(hi-hf))^(1/2)*Qp/sqrt(3);
a=0.5*sqrt(R*dh);
a=a/12;                             //conversion to ft
hp=4*%pi*a*P*N*1000/33000;
printf('\nRolling Load = %g\nHorsepower = %g',P,hp);
