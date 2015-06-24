//chapter9
//example9.12
//page153

Vdc=50 // V
rf=25 // ohm
Rl=800 // ohm

// Vdc=Idc*Rl and Idc=Im/%pi so
// Vdc=Im*Rl/%pi
// but Im=Vm/(rf+Rl) so 
// Vdc=Vm*Rl/(%pi*(rf+Rl))
// making Vm as subject we get

Vm=Vdc*%pi*(rf+Rl)/Rl

printf("ac voltage required = %.1f V \n",Vm)
