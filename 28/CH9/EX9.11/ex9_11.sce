s=%s;
H=syslin('c',10/(s*(0.1*s+1)*(0.05*s+1)))
fmin=0.1;
fmax=100;
bode(H,fmin,fmax)
show_margins(H)
gm=g_margin(H)
pm=p_margin(H)
