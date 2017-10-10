
clc
//solution
//given
//ref fig 10.34
P=15000//N
t=150//N/mm^2
l=25//mm
//Pva+Pvb=P,Pva=Pvb
Pva=P/2//N
Pvb=P/2//N
//balnce moments abt B
Pha=(P*50)/75//N
//let s1 be size at top
Pa=sqrt(Pva^2+Pha^2)//N
printf("the value of force at A is,%f N\n",Pa)
//Pa=thorat area* permissible stress
//Pa=0.707*s1*l*t=0.707*s1*25*150=2650*s1
s1=Pa/2650//mm
printf("the size of weld at top is,%f mm\n",s1)
//let s2 be size at bottom
//Pvb=0.707*s2*l*t
//Pvb=2650*s2
s2=Pvb/2650//mm
printf("the size of weld at bottom is,%f mm\n",s2)