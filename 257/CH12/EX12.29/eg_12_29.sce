s=%s;
sys1=syslin('c',10000*(s+1)*(s+3)/(s*(s+2)*(s-4)))
nyquist(sys1)
show_margins(sys1,'nyquist') 

