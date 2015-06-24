clc
//Initialization of variables
s=0.86
P2=3.8 //psia
Patm=26.8 //in of Hg
SPatm=29.9 //in of Hg
psi=14.7 //psia
//calculations
Pa=Patm*psi/SPatm
Pcrit=-(Pa-P2)*144/(s*62.4)
Q=sqrt((-Pcrit+ 10*144/(s*62.4))*64.4*%pi^2 /(-1/2.25^2 + 1/0.25^2 ))
//results
printf("Max. theoretical flow = %.1f cfs",Q)
