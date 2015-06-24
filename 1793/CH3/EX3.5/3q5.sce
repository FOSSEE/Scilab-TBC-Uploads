clc
//initialisation of variables
G= 2.68
w= 0.12
d= 1794.4 //kg/m^3
W= 1000 //kg/m^3
emax= 0.75
emin= 0.4
//calculation
e= (G*W*(1+w)/d)-1
D= ((emax-e)/(emax-emin))*100
//results
printf ('relative density of compaction in percentage = % f ',D)
