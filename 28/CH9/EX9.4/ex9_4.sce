s=%s;
H=syslin('c',(4*s+1)/(s^2*(s+1)*(2*s+1)))
nyquist(H)
show_margins(H,'nyquist')
mtlb_axis([-20 20 -5 5])
("We see from the locus that the point -1+j0 is encircled twice,hence N=2 and P=0.")
printf("Therefore Z=2,hence two zeros lie in RHP") // N=P-Z
printf("System is unstable")
