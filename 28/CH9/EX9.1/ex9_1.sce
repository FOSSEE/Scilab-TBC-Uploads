s=%s;
syms K T1 T2
H=syslin('c',K/((T1*s+1)*(T2*s+1)));
nyquist(H)
show_margins(H,'nyquist')
printf("Since P=0(no of poles in RHP) and the nyquist contour does not encircle the point -1+j0")
printf("System is stable")