s=%s;
syms K T
H=syslin('c',K/(s*(T*s+1)))
nyquist(H)
show_margins(H,'nyquist')
mtlb_axis([-1 1 -1 1])
printf("Since P=0(no of poles in RHP) and the nyquist contour does not encircle the point -1+j0")
printf("System is stable")