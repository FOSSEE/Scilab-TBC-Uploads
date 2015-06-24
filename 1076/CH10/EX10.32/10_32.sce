clear
clc

S=10
xg=.1
xe=.08

X1= 1/((1/.1) + 1/(xe + ((xg+xe)/2)))
FMVA1=S* (1/X1)
mprintf("When reactors are used, fault level=%.2f MVA", FMVA1)

X2= xg/3
FMVA2=S* (1/X2)
mprintf("\nWhen reactors are not used, fault level=%.0f MVA",FMVA2)


