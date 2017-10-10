//chapter5
//example5.4
//page86

mu=6
Eg=9 // V
rp=2400 // ohm
Rl=3000 // ohm

Ip=mu*Eg/(rp+Rl) // A
power=Ip^2*Rl // W

printf("ac power in load = %.3f W",power)
