//chapter4
//example4.4
//page74

Vs=300 // V
rp=500 // ohm
Rl=2000 // ohm
Vm=Vs*2^0.5 // in V
Im=Vm/(rp+Rl) // A
Idc=2*Im/%pi // A
Pdc=Idc^2*Rl // W
Irms=Im/2^0.5 //A
Pac=Irms^2*(rp+Rl) // W
efficiency=(Pdc/Pac)*100

printf("dc power output = %.3f W \n",Pdc)
printf("ac power input = %.3f W \n",Pac)
printf("efficiency = %.2f percentage",efficiency)
