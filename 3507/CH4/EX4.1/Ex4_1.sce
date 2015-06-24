//chapter4
//example4.1
//page68

rp=300 // ohm
Rl=1200 // ohm

Vm=200*2^0.5 //V
Im=Vm/(rp+Rl)
Idc=Im/%pi // in ampere
Idc_mA=Idc*1000 // in mA
Irms=Im/2
Irms_mA=Irms*1000
Pdc=Idc^2*Rl
Pac=Irms^2*(rp+Rl)
efficiency=(Pdc/Pac)*100

printf("dc current = %.3f A or %.3f mA \n",Idc,Idc_mA)
printf("rms current = %.3f A or %.3f mA \n",Irms,Irms_mA)
printf("rectification efficiency = %.2f percentage",efficiency)

// accurate answer of rms current is 94.281 mA but in book it is given as 94.5 mA
