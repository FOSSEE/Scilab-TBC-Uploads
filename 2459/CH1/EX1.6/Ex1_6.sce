//chapter1
//example1.6
//page14

//for maximum power transfer, resistance of load and amplifier should match
//so we take load=15 ohm

Rl=15 // ohm
Ri=15 // ohm
V=12 // V

Rt=Rl+Ri
I=V/Rt
P=I^2*Rl

printf("for maximum power transfer load must equal amplifier resistance \nso required load = %d ohm\n \n",Rl)
printf("power delivered to load = %.3f W",P)
