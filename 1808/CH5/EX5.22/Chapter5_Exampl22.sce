clc
clear
//INPUT DATA
p1=1;//initial pressure in bar
pd=30;//delivery pressure in bar
t1=288;//temperature in K
n=1.3;//index of copression

//CALCULATIONS
p21=sqrt(p1*pd);//Intermediate pressure in bar
v121=(p21/p1)^(1/n);//volume ratio
t21=t1*(p21/p1)^((n-1)/n);//temperature in K
v212=t21/t1;//volume ratio
v12=v121*v212;//volume ratio
d12=sqrt(v12);//Ratio of cylinder diameters

//OUTPUT
printf('(i)Ratio of cylinder diameters is %3.3f ',d12)

