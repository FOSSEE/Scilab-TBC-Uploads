//chapter9
//example9.11
//page152

rf=20 // ohm
Rl=800 // ohm
Vm=50 // V

Im=Vm/(rf+Rl) // in ampere
Idc=Im/%pi // in ampere
Irms=Im/2 // in ampere
Pac=Irms^2*(rf+Rl)
Pdc=Idc^2*Rl
Vout=Idc*Rl
efficiency=100*Pdc/Pac

printf("Im = %.1f mA \n",Im*1000)
printf("Idc = %.1f mA \n",Idc*1000)
printf("Irms = %.1f mA \n \n",Irms*1000)
printf("ac power input = %.3f W \n",Pac)
printf("dc power output = %.3f W \n \n",Pdc)
printf("dc output voltage = %.3f V \n \n",Vout)
printf("efficiency = %.3f percent \n",efficiency)
