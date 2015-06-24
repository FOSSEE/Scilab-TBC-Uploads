//clear//
//Example 11.5:Nyquist criterion for Continuous Time Systems
//Nyquist Plot
s = %s;
//Open Loop Transfer Function
G = syslin('c',[1/(s+1)]);
H = syslin('c',[1/(0.5*s+1)]);
F = G*H;
clf;
nyquist(F)
show_margins(F,'nyquist')
