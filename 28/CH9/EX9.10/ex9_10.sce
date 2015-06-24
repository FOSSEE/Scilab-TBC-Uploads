s=%s;
syms K
H=syslin('c',K/(s*(0.2*s+1)*(0.05*s+1)))
nyquist(H)
show_margins(H,'nyquist')
mtlb_axis([-1 1 -5 1])
gm=g_margin(H)  // gain margin
pm=p_margin(H)  // phase margin
