// chapter14
// example14.12
// page 307

Rin=1d3 // ohm
Rc= 10d3 // ohm
Rl=100 // ohm
gain_beta=100

// effective collector load is
R_AC=Rc*Rl/(Rc+Rl)
Av=gain_beta*R_AC/Rin

printf("voltage gain = %.3f \n",Av)
printf("comment : load is only 100 ohm so efective load of amplifier is too much reduced.\nThus voltage gain is very small.\n")
printf("In such cases we can use a step down transformer to serve the purpose. \n")
