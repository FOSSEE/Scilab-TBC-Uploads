//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex5_2
clc;
clear;
T=100;//Temperature rise of motor in degree
t1=2;//Time in hour
t2=1.5;//Time in hour
Alpha=0.5;//Angle in rad
e=exp(-t1/t2);
thetam=100/(1-e);
t=thetam/T;
x=sqrt((t*(Alpha+1))-Alpha);
disp(x,"The permissible overloading is:")
