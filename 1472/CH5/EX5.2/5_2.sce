clc
//initialization of varaibles
dT=35 //F
H=34 //Btu
cv=1.2 //B/lb F
m= 2 //lb
//calculations
U=cv*dT*m
W=H-U
//results
printf("Work done = %d Btu",W)
printf("\n Internal energy change = %.1f Btu",U)
