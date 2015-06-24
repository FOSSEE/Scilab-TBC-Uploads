clc
//initialization of varaibles
n=1.3
P1=15 //psia
P2=75 //psia
eta=0.5
eta2=0
//calculations
Pr=(P2/P1)^(1/n)
Cl=(1-eta)/(Pr-1)
Cl2=(1-eta2)/(Pr-1)
//results
printf("For volumetric efficiency to be 0.5, Clearance = %.3f",Cl)
printf("\n For volumetric efficiency to be 0, Clearance = %.3f",Cl2)
