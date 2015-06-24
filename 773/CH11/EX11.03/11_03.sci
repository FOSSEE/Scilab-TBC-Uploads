//value//
s=%s;
sys1=syslin('c',(s+3-%i)*(s+3+%i)/((s+2-%i)*(s+2+%i)));
evans(sys1,100)
printf("Rootlocus starts from s=-2+i & -2-i ends at s=-3+i &-3- i \n")
