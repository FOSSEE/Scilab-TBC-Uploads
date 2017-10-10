//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex5_3
clc;
clear;
Alpha=0.4;//Angle in rad
T1=100;//Temperature rise of motor in degree
T2=150;//Temperature rise of motor in degree
P=125;//Power in KW
t1=15;//Time in hour
t2=30;//Time in hour
x=-t1/T1;
a=exp(x);
y=-t2/T2;
b=exp(y);
p=sqrt(((Alpha+1)*(1-(a*b)))/(1-a)-Alpha);
disp(p,"The permissible overloading of the motor is:")

