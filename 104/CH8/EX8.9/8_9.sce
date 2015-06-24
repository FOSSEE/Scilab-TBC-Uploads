//multiple order pole
s=%s
sys=syslin('c',(s+3)/(s*(s+2)^3))
clf
evans(sys)
printf("this shows that whole real axis is occupied by RL and CRL")
