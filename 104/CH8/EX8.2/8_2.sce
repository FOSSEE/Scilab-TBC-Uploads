//root locus
s=%s
sys=syslin('c',(s+1)/(s*(s+2)*(s+3)))
evans(sys)
printf("number of branches of root loci is 3 as equation is of 3rd order")