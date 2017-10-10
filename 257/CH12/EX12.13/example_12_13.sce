s=%s;
sys1=syslin('c',100*(1+5*s)/(s^4*(s+1)))
nyquist(sys1)
show_margins(sys1,'nyquist') 
