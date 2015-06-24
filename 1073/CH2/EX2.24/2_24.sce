clc;
clear;
printf("Example 2.24\n Page no. 2.47");
//given
L=1//m
thp=2//Thickness of pipe; in mm
thi=10//Thickness of insulation; in mm
T1=373//K
T2=298//K
id=30//mm
r1=id/2//mm
r2=r1+thp//mm
r3=r2+thi//mm
//In S.I units
r1=r1/1000 //m
r2=r2/1000//m
r3=r3/1000//m
k1=17.44//W/(m.K)
k2=0.58//W/(m.K)
hi=11.63//W/(sq m.K)
ho=11.63//W/(sq m.K)
//Solution
Q=(2*%pi*L*(T1-T2))/(1/(r1*hi)+(log(r2/r1))/k1+((log(r3/r2))/k2)+(1/(0.02*ho)))
printf("ANSWER: \n Rate of heat loss,Q=%f W",Q);
