//chapter13
//example13.13
//page287

Rc=12 // kilo ohm
Rl=6 // kilo ohm
re_dash=33.3d-3 // kilo ohm

R_AC=Rc*Rl/(Rc+Rl)
Av=R_AC/re_dash

printf("voltage gain = %.3f \n",Av)

// the accurate answer is 120.120
