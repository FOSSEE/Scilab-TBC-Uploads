clc
clear

//INPUT
m=1/(342*100);//molar concentration of water
t=289;//temperature in K
p=53.5*13.6*981;//pressure in dynes/sq.cm

//CALCULATIONS
k=p/(t*m);//the value of k in ergs/mol.deg

//OUTPUT
mprintf('the value of k is %3.2f ergs/mol.deg',k)
