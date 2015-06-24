//caption:root_locus
//example 1
//page 291
s=%s;
g=s/(s+1);
G=syslin('c',g)
evans(g,200)