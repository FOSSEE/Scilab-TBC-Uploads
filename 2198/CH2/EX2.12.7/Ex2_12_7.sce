//Ex 2.12.7
clc;clear;close;
format('v',8);

//Given : 
Vs=100;//V
Rf1=20;//ohm
Vgamma1=0.2;//Volts
Rf2=15;//ohm
Vgamma2=0.6;//Volts
Vb_Ge=0.2;//Volts
Vb_Si=0.6;//Volts
R1=10*10^3;//ohm
R2=1*10^3;//ohm
//Case(i)
Imax=Vs/R1;//A
//D1 ON & D2 off
V=Vb_Ge+Rf1*Imax;//Volt
//D2 off as V<Vb_Si
I2=0;//A
I1=(Vs-V)/(R1+Rf1);//A
disp("For R=10 kohm : ");
disp(I1*1000,"I1(mA)=");
disp(I2,"I2(mA)=");
//Case(ii)
R=R2;//ohm//D1 & D2 ON 
//V=Vb_Ge+Rf1*I1//V=Vb_Si+Rf2*I2
///V=Vs-I*R//V=Vs-(I1+I2)*R
//20*I1-15*I2=Vb_Si-Vb_Ge
//1020*I1+1000*I2=99.8
A=[20 1020;-Rf2 R];
B=[Vb_Ge-Vb_Ge Vs-Vb_Ge ];
X=B*A^-1;//
I1=X(1)*1000;//mA
I2=X(2)*1000;//mA
disp("For R=1 kohm : ");
disp(I1,"I1(mA)=");
disp(I2,"I2(mA)=");
//Answer for 2nd part is not accurate in the book.
