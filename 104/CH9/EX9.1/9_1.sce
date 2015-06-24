//nyquist plot
s=%s;
sys=syslin('c',1/(s*(s+2)*(s+10)))
nyquist(sys)
show_margins(sys,'nyquist')
K=kpure(sys)
disp(K,"system is stable for 0<K<")
