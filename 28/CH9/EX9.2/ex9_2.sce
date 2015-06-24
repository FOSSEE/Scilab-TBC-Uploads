s=%s;
H=syslin('c',(s+2)/((s+1)*(s-1)))
nyquist(H)
show_margins(H,'nyquist')
printf("Since P=1 and the pt. -1+j0 is encircled once by the locus")
printf("Hence N=1 therefore, Z=0(no of zeros in RHP)")
printf("System is stable")
