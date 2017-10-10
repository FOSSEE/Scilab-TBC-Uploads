clc
clear
//INPUT DATA
k=0.05;//clearance
p1=1;//initial pressure in bar
pd=5.5;//delivery pressure in bar
n=1.3;//index of compression
R=0.287;//gas constant
N=500;//Speed in rpm
d=0.2;//diameter in m
t1=293;//temperature in K

//CALCULATIONS
nv=1+k-k*((pd/p1)^(1/n));//volumetric efficiency in percentage
va=nv*(3.14*d^3*1.5*N)/4;//Volume of air in m^3/min
m=p1*va/(R*t1);//mass of air in kg/min
ip=(n/(n-1))*p1*10^2*(va/60)*((pd/p1)^((n-1)/n)-1);//Power required to run the compressor in kW

//OUTPUT
printf('(i)Volumetric efficiency %3.4f percentage \n (ii)Power required to run the compressor is %3.2f kW',nv,ip)




