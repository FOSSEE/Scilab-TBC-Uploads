//chapter1
//example1.10
//page18

V=120 // V
R1=40 // ohm
R2=20 // ohm
R3=60 // ohm

//removing load, voltage across AB is
E0=R2*V/(R1+R2)

//replacing voltage source by short and removing load, resistance across AB is
R0=R3+(R1*R2/(R1+R2))

//for maximum power transfer, load must be equal to resistance across AB so
Rl=R0

P=E0^2/(4*Rl)
printf("load resistance for maximum power transfer = %.3f ohm \n",Rl)
printf("maximum power to load = %.3f W",P)
