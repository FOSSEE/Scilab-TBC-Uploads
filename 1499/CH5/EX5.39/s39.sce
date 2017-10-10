s=%s;
syms k
H=syslin('c',2/(s*(1-2*s)))
// for K/2>-1 or K>-2
nyquist(H)
show_margins(H,'nyquist')
printf("P=1(poles in RHP)")
printf("N=0,hence Z=1")
printf("Therefore,System is unstable")
