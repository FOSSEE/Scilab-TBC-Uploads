clear
//
//given and derived from the circuit in the figure
ish=2
ia=77 //75+2
ra=0.15
v=200
e=v+ia*ra
//when dc machine runs as a motor 
ia=73 //75-2
eb=v-(ia*ra)
//n1 and n2 are the speeds at which the motor is operating as a generator and motor
n1=211.55
n2=189.05
p=n1/n2
printf("\n %0.3f ",p)
