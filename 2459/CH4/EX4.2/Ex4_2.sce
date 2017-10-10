//chapter4
//example4.2
//page68

rp=200 // ohm
Rl=800 // ohm
Edc=100 // V

// if maximum ac voltage required=Vm then
// Edc=Idc*Rl i.e. Edc=Vm*Rl/(%pi*(rp+Rl))
// thus

Vm=Edc*%pi*(rp+Rl)/Rl
efficiency=(0.406/(1+(rp/Rl)))*100

printf("required ac voltage = %.3f V \n",Vm)
printf("rectification efficiency = %.3f percentage",efficiency)
