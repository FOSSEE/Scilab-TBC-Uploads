//Ex3_17 Pg-192
clc
 C=20 //capacitance in pF
 V=5 //supply voltage in V
 K=C*sqrt(V)
C_V1=K/sqrt(V+1)
printf("Capacitance for 1V increase =%.1f pF",C_V1)
