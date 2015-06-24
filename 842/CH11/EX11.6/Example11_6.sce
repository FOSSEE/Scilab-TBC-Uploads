//clear//
//Example 11.6:Nyquist criterion for Continuous Time Systems
//Nyquist Plot
s = %s;
//Open Loop Transfer Function
F = syslin('c',[(s+1)/((s-1)*(0.5*s+1))])
clf;
nyquist(F)
show_margins(F,'nyquist')
