//clear//
//Example 11.7
//Nyquist Plot
s = %s;
T =1;
//Open Loop Transfer Function
G = syslin('c',[-%e^(-s*T)]);
clf;
nyquist(G)
show_margins(G,'nyquist')
