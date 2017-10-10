s=%s;
sys1=syslin('c',k*(0.05*s+1)*(1+s)/((10*s+1)*(s-1)))
nyquist(sys1)
show_margins(sys1,'nyquist') 
