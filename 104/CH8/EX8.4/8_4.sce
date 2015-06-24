//root locus
s=%s
sys=syslin('c',1/(s*(s+2)*(s^2+2*s+2)))
clf
evans(sys)
printf("when pole zero configuration is symmetrical wrt a point in s plane,then root loci is symmetrical to that point")