//Example 4.3.B: current and resistance
clc;
clear;
close;
e1=4;//V
e2=1.0191;//V
R1=100;//OHM
R2=49.045;//OHMS
r3=R1-R2;//ohms
rg=50;//ohms
r4=200;//ohms
A=[r4 -r3;-r3 (r4+rg+r3)];//
B=[e1;e2];//
X=A\B;//
I2=X(2,1)*10^3;//
disp(I2,"current is ,(mA)=")
I1=((e1+(r3*10^-5))/r4);//mA
rp=((e2+(r3*I1)-(r4+rg+r3)*10^-5)/10^-5);//
disp(rp*10^-2,"resistance is,(k-ohm)=")
//resistance is calculated wrong innthe textbook
