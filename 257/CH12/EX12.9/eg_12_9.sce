s=%s;
sys=syslin('c',10/(s^2)*(s+2))
nyquist(sys)
show_margins(sys,'nyquist')