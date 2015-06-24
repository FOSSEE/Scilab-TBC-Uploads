//caption:root_locus
//example 11_27
//page 499
s=%s;
clf();
g=((s^2+4)/(s*(s+1)));
G=syslin('c',g)
evans(g,200)
xgrid(2)
