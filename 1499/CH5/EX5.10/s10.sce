syms K
H=syslin('c',(K/(s*((0.02*s)+1)*((0.04*s+1)))
fmin=0.1;
fmax=100;
bode(H,fmin,fmax)
show_margins(H)
// for phase margin =30
printf("From bode plot it can be seen that gain should be reduced by 4db")
