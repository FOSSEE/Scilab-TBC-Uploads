s=%s;
syms K
H=syslin('c',K*(1+s)/(1-s))
nyquist(H)
show_margins(H,'nyquist')
mtlb_axis([-1 1 -5 1])
gm=g_margin(H)  // gain margin
pm=p_margin(H)  // phase margin
