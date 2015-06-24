//calculation of K on root loci
s=%s
sys=syslin('c',(s+2)/(s^2+2*s+2))
evans(sys)
//value of K at s=0
printf("K=A*B/C \n A and B are lenths of vectors drawn from poles of sys \n C is lenths of vector drawn from zero of sys")
A=sqrt((-1)^2+1^2)
B=sqrt((-1)^2+(-1)^2)
C=-2
K=A*B/C
disp(K,"value of K at s=0 is")