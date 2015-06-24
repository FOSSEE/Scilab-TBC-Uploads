//find..
clc
//soltuion
//given
d1=0.3//m
d2=0.45//m
q1=2.8//rad
q2=3.66//rad
N1=200//rpm
u=0.25
P=3000//W
//let T1 and  T2 be tneion on tight and slag side
//since q2>q1,therfore design is smaller pulley based
v=%pi*N1*d1/60//m/s
//P=(T1-T2)*v
//T1-T2=955//N
//log(T1/T2)=u*q=0.25*q1=0.3043
//T2=T1/2.015//N
T1=1896//N
T2=941//N
To=(T1+T2)/2
Toi=To+(0.1)*To//N//incresed initial tension
//Toi=(T11+T22)/2//N
//T11+T22=2*Toi//N
//T11+T22=3120.7//N....eq1
//T12/T22=2.015...eq2
//from eq1 and eq2
T11=2085.7
T22=1035//N
P1=(T11-T22)*v
u1=u+(0.1)*u
//log(T111/T222)=u1*q1=0.3348
//T111/T222=2.16
//Toi=(T111+T222)/2.....eq3
//T111+T222=2837....eq4
//from eq3 and eq4
T111=1939//N
T222=898//N
P2=(T111-T222)*v//W
pi1=((P1-P)/P)*100
pi2=((P2-P)/P)*100
printf("the perctage inc in power wen initial tension is inc is,%f \n",pi1)
printf("the %age perct inc inpower wen coefficient of riction si,%f",pi2)
