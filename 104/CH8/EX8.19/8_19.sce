//effect of addition of zeroes to sys
s=%s
sys=syslin('c',1/(s*(s+1)))    //a=1
evans(sys)
sys1=syslin('c',(s+2)/(s*(s+1)))   //b=2
//evans(sys1)
printf("adding a LHP zero to sys has effect of moving and bending the root loci towards the LHP")