clc
//Initialization of variables
P1=200 //psia
P2=15 //psia
V1=1 //ft^3
g=1.3
//calculations
V2=V1*(P1/P2)^(1/g)
W=-(144*(P2*V2 - P1*V1)/(g-1))
//results
printf("Work done = %.2e ft. lbf",W)
