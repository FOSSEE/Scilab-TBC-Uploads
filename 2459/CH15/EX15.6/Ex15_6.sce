//chapter15
//example15.6
//page328

Rl=100 // ohm
n=10
Ic=100d-3 // ampere

Rl_1=n^2*Rl
Pmax=0.5*Ic^2*Rl_1

printf("maximum ac power output = %.3f W \n",Pmax)
