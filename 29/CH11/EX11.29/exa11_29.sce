//caption:root_locus
//example 11_29
//page 502
s=%s;
g=1/(s*(s+1)*(s+3));
G=syslin('c',g)
evans(g,200)
xgrid(2)