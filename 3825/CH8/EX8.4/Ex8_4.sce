clc
R=8.314
TO=300
X1=0.79
X2=0.21
deltag=R*TO*((X1*log(X1))+(X2*log(X2)))
mprintf("ge-gi=%fJ/mol\n",deltag)//ans vary due to roundoff error
W=(-deltag*10^3)/3600
mprintf("W=%fW\n",W)//ans vary due to roundoff error
