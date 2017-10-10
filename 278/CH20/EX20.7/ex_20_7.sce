//find..
clc
//soltuion
//given
n=10
v=25//m/s
P=115*1000//W
q=%pi
B=22.5//deg
u=0.2
m=0.6//kg/m
//let T1 and T2 be tension on tight and slag side
//P=(T1-T2)*v*n//W
//T1-T2=460...eq1
//log(T1/T2)=u*q*cosec(%pi/180*B)=0.714
//T2=T1/5.18//....eq2
//from eq1 and eq2
T1=570//N
T2=110//N
Tc=m*v^2
Tt1=T1+Tc
Tt2=T2+Tc
printf("the value of Tt1 and Tt2 is,%f N\n,%f N",Tt1,Tt2)