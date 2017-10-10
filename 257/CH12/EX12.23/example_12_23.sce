s=%s;
sys1=syslin('c',(s+8)*(s+2)/((s^3)))
nyquist(sys1)
show_margins(sys1,'nyquist') 

