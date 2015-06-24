//gain margin and phase margin
s=%s;
sys=syslin('c',(2500)/(s*(s+5)*(s+50)))
nyquist(sys)
show_margins(sys,'nyquist')
gm=g_margin(sys)
pm=p_margin(sys)
disp(gm,"gain margin=")
disp(pm,"phase margin=")