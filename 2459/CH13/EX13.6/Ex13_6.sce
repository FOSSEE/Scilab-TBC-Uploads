//chapter13
//example13.6
//page282

Rc=2 // kilo ohm
Rl=0.5 // kilo ohm
Rin=1 // kilo ohm
gain_beta=60

R_AC=Rc*Rl/(Rc+Rl)
Av=gain_beta*R_AC/Rin

printf("voltage gain  = %.3f \n",Av)
