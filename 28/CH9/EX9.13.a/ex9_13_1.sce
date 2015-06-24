s=%s;
H=syslin('c',(8*(s+4))/((s-1)*(s-2)))
fmin=0.1;
fmax=100;
bode(H,fmin,fmax)
show_margins(H)
gm=g_margin(H)
pm=p_margin(H)