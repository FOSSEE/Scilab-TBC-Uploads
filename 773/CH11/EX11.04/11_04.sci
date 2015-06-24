//value//
s=%s;
H=syslin('c',(s+1)/(s+2));
evans(H,100)
printf(" Clearly from the graph it  observed that given point -1+i & -3+i does not lie on the root locus \n")
// there is another process to check whether the points lie on the locus of the system
P=-1+%i;    //P=selected point
k1=-1/real(horner(H,P))
Ns=H('num');Ds=H('den');
roots(Ds+k1*Ns)     //does not contains P as particular root
P=-3+%i;    //P=selected point
k2=-1/real(horner(H,P));
Ns=H('num');Ds=H('den')
roots(Ds+k2*Ns)     //does not contains P as particular root
