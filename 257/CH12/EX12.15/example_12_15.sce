s=%s;
sys1=syslin('c',50/(s*(0.1*s+1)*(1+0.2*s)))
nyquist(sys1)
//show_margins(sys1,'nyquist') 
