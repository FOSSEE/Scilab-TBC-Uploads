s=%s;
sys1=syslin('c',10/(s^2*(0.25*s+1)*(1+0.5*s)))
nyquist(sys1)
//show_margins(sys1,'nyquist') 

