//clear//
//Example 11.8:Nyquist criterion for Discrete Time Systems
//Nyquist Plot
//Discrete Time System
z = %z;
//Open Loop Transfer Function
F = syslin('d',[1/(z*(z+0.5))])
clf;
nyquist(F)
show_margins(F,'nyquist')
