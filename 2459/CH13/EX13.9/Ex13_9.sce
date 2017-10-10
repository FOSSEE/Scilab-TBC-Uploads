//chapter13
//example13.9
//page283

Rc=3 // kilo ohm
Rl=6 // kilo ohm
Rin=0.5 // kilo ohm
Vin=1 // mV
gain_beta=50

R_AC=Rc*Rl/(Rc+Rl)
Av=gain_beta*R_AC/Rin

// since Av=Vout/Vin we get
Vout=Av*Vin

printf("output voltage = %.3f mV \n",Vout)
