s=%s
h=syslin('c',(1+0.5*s)/(1+0.1*s)*(1+0.02*s)*(s^2));
nyquist(h)
//show_margins(h,'nyquist') 
