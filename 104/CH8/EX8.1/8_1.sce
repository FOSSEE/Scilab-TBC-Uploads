//poles and zeroes
s=%s
sys=syslin('c',(s+1)/(s*(s+2)*(s+3)))
plzr(sys)
printf("three points on the root loci at which K=0 and those at which K=inf are shown in fig")

