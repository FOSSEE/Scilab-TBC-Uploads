//find..
clc
//solution
//given
//ref fig 25.21 and 25.22
q=3.93//rad
d=350//mm
r=175//mm
Tb=350*1000//N-mm
u=0.3
//let P1 be pull,cloackwise roration
//log(T1/T2)=u*q
//T1/T2=3.256  ...eq1
//Tb=(T1-T2)*r=175(T1-T2)
//T1-T2=2000//N.....eq2
//from eq1 and eq2,we get
T1=2886.5//N
T2=886.5//N
//taking moment abt O
P1=(T2*150-T1*35)/500
printf("pull req clockwise is,%f N\n",P1)
//P2 ,anticlockwise
P2=(T1*150-T2*35)/500//N
printf("pull req in anticlockwise is,%f N\n",P2)
//ref fig 25.23
//find OA
OB=35
//self locking considered
OA=T1*OB/T2//mm
printf("value of OA is,%f mm\n",OA)