//find..
clc
//solution
//given
P=220//N
u=0.4
q=%pi
d=150//mm
r=0.075//m
//let T1 be max force 
//T2 be min force
Tb=450//N-m
//Tb=(T1-T2)*r
//taking mont abt O
//220*200+T1*50=T2*100
T2=[(220*200)+(300000)]/50//N
T1=6000+T2//N
printf("max and min force is,%f N\n,%f N\n",T1,T2)
//ref fig 25.25,26,27
//log(T11/T22)=u*q
//T11/T22=3.52  ...eq1
//taking moment ABT O
//220*200+T22*50=T11*100....eq2
//from eq1 and eq 2,we egt
T11=146//N
T22=514//N
Tb=(T11-T22)*r//N-m
printf("max torque acting is %f N-m\n",Tb)