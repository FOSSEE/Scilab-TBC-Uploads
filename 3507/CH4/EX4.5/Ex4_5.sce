//chapter4
//example4.5
//page74

Vm=1000 // V
rp=500 // ohm
Rl=4500 // ohm

Im=Vm/(rp+Rl) // in ampere
Idc=2*Im/%pi // in ampere
Idc_mA=Idc*1000 // in mA
Iac=Im/2^0.5 // in ampere
Iac_mA=Iac*1000 // in mA

printf("dc ammeter reading = %.3f A or %.3f mA \n",Idc,Idc_mA)
printf("ac ammeter reading = %.3f A or %.3f mA",Iac,Iac_mA)
