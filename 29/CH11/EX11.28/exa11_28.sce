//caption:root_locus
//example 11_28
//page 501
s=%s;
clf();
g=1/(s*(s+2)*(s^2+2*s+2));
G=syslin('c',g)
evans(g,200)
xgrid(2)
