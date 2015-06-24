//chapter9
//example9.17
//page160

Vin=240 // V rms
Rl=480 // ohm
rf=1 // ohm

Vm=Vin*2^0.5
// for bridge rectifier we know that
Im=Vm/(2*rf+Rl)
Idc=2*Im/%pi
Irms=Im/2
P=Irms^2*rf

printf("mean load current = %.3f A \n",Idc)
printf("power dissipated in each diode = %.3f W \n",P)

// the accurate answers are mean load current = 0.448 A and power dissipated in each diode = 0.124 W 
