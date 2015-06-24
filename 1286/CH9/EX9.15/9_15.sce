clc
//initialisation
e=0.31
e1=1.76//cal/gm/k
t=100//c
T=273+t//k
//-CALCULATIONS
ds=e1-e
dq=ds*T
//results
printf(' \n heat of vaporisation at this temperature= % 1f cal/gm',dq)
