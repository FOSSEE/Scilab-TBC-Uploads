s=%s;

H=syslin('c',10/(s*(s+1)*(0.05*s+1)))
nyquist(H)
show_margins(H,'nyquist')
mtlb_axis([-50 50 -50 50])
gm=g_margin(H)  // gain margin
pm=p_margin(H)  // phase margin
