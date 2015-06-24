//chapter 14
//example 14.8
//page 303

gain_db=40 // db
Vin=10d-3 // mV
Rl=1 // kilo ohm

// we know that Vout/Vin=10^(gain_db/20) so making Vout as subject we get
Vout=Vin*10^(gain_db/20)
P_load=Vout^2/Rl

printf("output voltage = %.3f V \n",Vout)
printf("load power = %.3f mW \n",P_load)
