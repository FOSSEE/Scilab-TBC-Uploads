clear
//Given
n=10
E=1.5
R=4                     //ohm
r=0.1
a=8

//Calculation
Emf=n*E
Rt=R+(n*r)
I=Emf/Rt
Emf1=(a*E)-(2*E)
I1=Emf1/Rt
I11=I-I1

//Result
printf("\n Reduction in current is  %0.3f  A", I11)
