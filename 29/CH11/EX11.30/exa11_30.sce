//caption:root_locus
//example 11_30
//page 503
s=%s;
g=1/(s*(s+4)*(s^2+4*s+13));
G=syslin('c',g)
evans(g,200)
xgrid(2)