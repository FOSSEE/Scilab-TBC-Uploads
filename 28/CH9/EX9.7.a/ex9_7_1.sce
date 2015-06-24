s=%s;
syms k
H=syslin('c',(K*(s+2))/(s^2*(s+1)))
nyquist(H)
show_margins(H,'nyquist')
mtlb_axis([-20 20 -20 20])
printf("P=0 and the locus does not encircle the point -1+j0")
printf("System is stable")