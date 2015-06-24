clc
//initialisation
i=3//amp
r=10//ohm
t=27//c
T=273+t//k
//CALCULATIONS
dq1=0
ds1=dq1/T
dq2=i*i*r
ds2=dq2/T
//results
printf(' \n change in entropy of resistor= % 1f j/k',ds1)
printf(' \n change in entropy of universe= % 1f j/k',ds2)
