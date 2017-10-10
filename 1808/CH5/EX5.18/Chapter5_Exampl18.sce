clc
clear
//INPUT DATA
c=4;//clearance
p1=1;//pressure in bar
p5=120;//pressure in bar
va=15;//volume in m^3/min
n=1.2;//index of expansion

//CALCULATIONS
N=log((p5/p1))/log(c);//No.of stages
//take N=3.5=4 APPROXIMATELY
C=(p5/p1)^(1/4);//Exact pressure ratio
p2=C*p1;//Intermediate pressure in bar
p3=C*p2;//Intermediate pressure in bar
p4=C*p3;//Intermediate pressure in bar
P5=C*p4;//Intermediate pressure in bar
ip=p1*10^2*(va/60)*(n/(n-1))*N*(((p5/p1)^((n-1)/(n*N)))-1);//Minimum power to compress in kW

//OUTPUT
printf('(i)Number of stages %3.1f \n (ii)Exact pressure ratio %3.2f \n (iii)Intermediate pressure is p2 %3.4f bar \n p3 %3.4f bar \n p4 %3.4f bar \n p5 %3.4f bar \n (iv)Minimum power to compress is %3.2f kW ',N,C,p2,p3,p4,p5,ip)







