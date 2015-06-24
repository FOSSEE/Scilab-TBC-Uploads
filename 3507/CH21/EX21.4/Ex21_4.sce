//chapter21
//example21.4
//page468

R=10d3 // ohm
C=2.2d-6 // F
V1=0 // V
V2=10 // V
t1=0 // sec
t2=0.4 // sec

Eo=R*C*(V2-V1)/(t2-t1)

printf("output voltage = %.3f V \n",Eo)
