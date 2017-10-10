s=%s;
sys1=syslin('c',10*(s+3)/((s-1)*(s)))
nyquist(sys1)
show_margins(sys1,'nyquist') 

