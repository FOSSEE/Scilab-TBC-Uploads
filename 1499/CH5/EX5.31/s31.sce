s=%s;
H=syslin('c',1/(s*(s+1)*(1+2*s)))
nyquist(H)
show_margins(H,'nyquist')
printf("Since P=1 and the pt. -1+j0 is encircled once by the locus")
printf("Hence N=1 therefore, Z=0(no of zeros in RHP)")
printf("System is stable")
gm=g_margin(H)  // gain margin
pm=p_margin(H)  // phase margin
