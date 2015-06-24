clc
//Initialization of variables
G=100 //lb/s
g=32.2
V2=300 //fps
V1=250 //fps
//calculations
Qh= (V2^2 -V1^2)/(2*g)
Q=Qh*G
//results
printf("Thermal energy added = %d ft lb/s",Q)
