//chapter 5 example 1//
clc
clear
//length of optical cavity=l,widt=w,refractive index=n,gain factor=B,loss coeffcient=A,threshold current density=Jth,threshold current required=Ith,refractive index of Ga As-air interface=R1//
n=3.8;//refractive index//
R1=((n-1)^2)/((n+1)^2);
B=20*(10^-3);//in area by centimeter cube//
A=10;//per cm//
l=200*(10^-4);//in cm//
w=100*(10^-4);//in cm//
k=1/R1;
Jth=(A+(log(k))/l)/B;
printf("\n threshold current density=%f A cm-2\n",Jth);
Ith=Jth*l*w;
printf("\n threshold current required=%f mA\n",Ith);