s=%s;
syms k
H=syslin('c',(k*(s-2))/(s+1)^2)
// for K/2>-1 or K>-2
nyquist(H)
show_margins(H,'nyquist')
printf("P=0(poles in RHP)")
printf("N=-1,hence Z=1")
printf("Therefore,System is unstable")
