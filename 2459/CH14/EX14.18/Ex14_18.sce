// chapter14
// example14.18
// page 313

f=200 // Hz
Ro=10d3 // ohm, transistor output impedence
Zi2=2.5d3 // ohm, input impedence of next stage

// since Ro=2*%pi*f*Lp, making Lp as subject we get
Lp=Ro/(2*%pi*f)

// since Zi2=2*%pi*f*Ls, making Ls as subject we get
Ls=Zi2/(2*%pi*f)

printf("primary inductance = %.1f H \n",Lp)
printf("secondary inductance = %.1f H \n",Ls)
