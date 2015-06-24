//Problem 2.06: 
//initializing the variables:
sg = 0.8
abvis = 0.02;// in cP
pref = 62.43; // in lb/ft3

//calculation:
p = sg*pref
u = abvis*6.720E-4; // in lb/ft.sec
v = u/p

printf("\n\nResult\n\n")
printf("\n kinematic viscosity of a gas is %.3E ft2/sec\n",v)
