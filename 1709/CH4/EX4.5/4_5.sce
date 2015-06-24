clc
//Initialization of variables
P1=200 //psia
P2=100 //psia
T1=300+460 //R
g=1.4
cp=0.24
//calculations
T2=(T1)*(P2/P1)^((g-1)/g)
V2=sqrt(2*32.2*778*cp*(T1-T2))
//results
printf("Final velocity  = %d ft/sec",V2)
