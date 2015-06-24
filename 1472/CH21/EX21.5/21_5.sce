clc
//initialization of varaibles
P1=5 //psia
P2=83.5 //psia
n=1.25
per=0.03
//calculations
nv1=1- per*((P2/P1)^(1/n) -1)
nv2=1-per*((sqrt(P2/P1))^(1/n) -1)
//results
printf("For single stage machine =  %.3f",nv1)
printf("\n For Two stage machine =  %.3f",nv2)
