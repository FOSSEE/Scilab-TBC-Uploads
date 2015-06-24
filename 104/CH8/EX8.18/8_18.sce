//effect of addition of poles to sys
s=%s
sys=syslin('c',1/(s*(s+1)))    //a=1
evans(sys)
sys1=syslin('c',1/(s*(s+1)*(s+2)))   //b=2
evans(sys1)
printf("adding a pole to sys has effect of pushing the root loci towards the RHP")