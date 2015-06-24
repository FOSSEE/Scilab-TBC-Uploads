//chapter13
//example13.7
//page282

Rc=10 // kilo ohm
Rl=10 // kilo ohm
Rin=2.5 // kilo ohm
gain_beta=100
Vin=1 // mV

R_AC=Rc*Rl/(Rc+Rl)
Av=gain_beta*R_AC/Rin

// since Av=Vout/Vin we get
Vout=Av*Vin

printf("output voltage = %.3f mV \n",Vout)
