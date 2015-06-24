clc
//Initialization of variables
w1=0.7532 //g
w2=0.9972 //g
wdep=0.4 //g
we=31.77 //g
//calculations
dn=w2/we - w1/we
t=dn/(wdep/we)
dne=wdep/we
dnmig=dn-dne
tplus=-dnmig/dne
tminus=1-tplus
//results
printf("tplus = %.3f",tplus)
printf("\n tminus= %.3f",tminus)
