// chapter14
// example14.11
// page 306

Rin=1 // kilo ohm
Rc= 2 // kilo ohm
gain_beta=100

// since first stage has loading effect of input impedence of second stage, we get effective load of first stage as
R_AC=Rc*Rin/(Rc+Rin)
Av1=gain_beta*R_AC/Rin

// second stage has no loading effect so its gain
Av2=gain_beta*Rc/Rin
Av=Av1*Av2

printf("voltage gain of first stage = %.3f \n",Av1)
printf("voltage gain of second stage = %.3f \n",Av2)
printf("total voltage gain = %.3f \n",Av)

// the accurate answer for gain of first stage is 66.667 and total gain is 13333.33 but in book they are given as 66 and 13200 respectively
