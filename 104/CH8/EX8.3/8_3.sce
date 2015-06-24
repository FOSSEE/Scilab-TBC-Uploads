//root locus
s=%s
sys=syslin('c',1/(s*(s+2)*(s+1)))
clf
evans(sys)
printf("root loci is symmetical to both axis")