//To determine the constant K for 16kV feeder
//Page 201
clc;
clear;

//Conductor Pararmeters
r=1.503;
xa=0.609;
xd=0.1366;
pf=0.9;
Vb=2400;
Vr=Vb;
x=xa+xd;
Kc=0.01; //From the Curve

K=((r*pf)+(x+sind(acosd(pf))))*(1000/3)*100/(Vr*Vb); // In Percent

printf('\na) The Value of Constant K is %g percent VDpu per kVA mile\n',K)
printf('b) From the precalculated per cent voltage drop Curve, It is found that the K is \n%g percent VDpu per kVA mile which is same as the answer obtained in part a\n',Kc)
