//laplace//
s=%s;
G=syslin('c',(5*(s+2))/((s+3)*(s+4)));
disp(G,"G(s)=")
x=denom(G);
disp(x,"Characteristics Polynomial=")
y=roots(x);
disp(y,"Poles of a system=")
