//Car running
//(1) When three men jump off in succession
u=0
v1=10+((700*5)/(11000+3*700))
v2=v1+((700*5)/(11000+2*700))
v3=v2+((700*5)/(11000+700))  //m/sec
//(2) When three men jump together
v=10+((3*5*700)/(11000+3*700))  //m/sec
printf("\nWhen three men jump off in succession v=%.3f m/sec\nWhen three men jump together v=%.3f m/sec",v3,v)
