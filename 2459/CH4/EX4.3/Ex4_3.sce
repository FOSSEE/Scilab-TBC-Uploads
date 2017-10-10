//chapter4
//example4.3
//page69

Vm=1000 // V
rp=500 // ohm
Rl=4500 // ohm

Im=Vm/(rp+Rl) // in A
Idc=Im/%pi // in A
Idc_mA=Idc*1000 // in mA
Irms=Im/2 // since ac current is equal to rms current
Irms_mA=Irms*1000 // in mA
W=Irms^2*(rp+Rl) // in watts

printf("dc ammeter reading = %.3f A or %.3f mA \n",Idc,Idc_mA)
printf("reading of ac ammeter = %.3f A or %.3f mA \n",Irms,Irms_mA)
printf("reading of wattmeter = %.3f W",W)
