//Example 8.8: speed 
clc;
clear;
close;
n1=500;//in rpm
d1=90;//in cm
d2=86;//in cm
v=600;//in volts
vd=0.1;//drop
eb1=v-(vd*v);//in volts
A=[90 -86;90 90];//
B=[240;54000];//
X=A\B;//
V1=X(1,1);//in volts
V2=X(2.1);//in volts
N1=n1*(V1-(vd*v))/(eb1);//
N2=N1*(d1/d2);//
disp(round(N1)," speed in rpm is")
disp(round(N2),"speed in rpm is")
//N2 is calculated wrong in the book
