clc
P2=200
P1=101.325
hfg=2256.94*18
R=8.314
T1=373
T2=1/((1/T1)-((log(P2/P1))/(hfg/R)))//from the equation formed in book
mprintf("T2=%fcelsius",T2)//ans vary due to roundoff error

