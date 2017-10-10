// determine the flow rate from the nozzle and power required to drive the pump
//ex 2.10 pgno.47
clc
v=8.31 // velocity at c
a= (%pi*(75e3)^2)/4
Q=a*v // flow rate
mprintf('Q = %e /s',Q)
g=9.8 // constant gamma
zc=32 // elevation
Hp= (v^2/(2*g))+zc // heat developed by pump
mprintf(' \n Hp= %f m ',Hp)
gammma=9800// constant gammma
P=gammma*Q*Hp  //power required
mprintf('\n P= %e W',P)
