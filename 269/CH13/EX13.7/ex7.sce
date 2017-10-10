s=poly(0,'s')
F=syslin('c',[(s^2-s+1)/(s^2+s+1)])
G=F
evans(G)
[hm]=trfmod(G ,['f'])