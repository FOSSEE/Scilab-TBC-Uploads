clc
//initialization of varaibles
V1=10 //cu ft
P1=15 //psia
V2=5 //cu ft
H=34.7 //Btu
//calculations
W=P1*(V2-V1)*144
dE=-H-W/778
//results
printf("Internal energy change = %.1f Btu",dE)
