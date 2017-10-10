clc
R=8.314
T=300
a=422.546
b=0.0373
v1=30
v2=5
W=integrate('((R*T)/(v-b))-(a/(v.^2))','v',v1,v2)
mprintf("W=%fkJ/kmol\n",W)//ans may vary due to roundoff error
deltaU=a*(1/v1-1/v2)
mprintf("U2-U1=%fkJ/kmol\n",deltaU)//ans vary due to roundoff error
Q=deltaU+W
mprintf("Q=%fkJ/kmol\n",Q)//ans vary due to roundoff error









