clc
//Initialization of variables
pgw=0.5069 //psia
p=14.696 //psia
Td=100 //F
Tw=80 //F
//calculations
pv= pgw- (p-pgw)*(Td-Tw)/(2800-Tw)
pg=0.9492 //psia
phi=pv/pg
//results
printf("relative humidity of air stream = %.1f percent",phi*100)
