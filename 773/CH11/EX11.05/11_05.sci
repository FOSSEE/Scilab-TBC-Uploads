//value//
s=%s;
H=syslin('c',1/(s*(s+1)*(s+3)));
evans(H,100)
printf("Clearly from the graph it  observed that given point -0.85  lies on the root locus \n")
// there is another process to check whether the points lie on the locus of the system
P=-0.85;    //P=selected point
k=-1/real(horner(H,P));
disp(k,"k=')
Ns=H('num');Ds=H('den');
roots(Ds+k*Ns)     //contains P as particular root
