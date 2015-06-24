//chapter9
//example9.13
//page157

rf=20 // ohm
Rl=980 // ohm
Vs=50 // V

Vm=Vs*2^0.5
Im=Vm/(rf+Rl)
Idc=2*Im/%pi // in ampere
Irms=Im/2^0.5 // in ampere

printf("mean load current  = %.3f mA \n",Idc*1000)
printf("rms load current = %.3f mA \n",Irms*1000)
