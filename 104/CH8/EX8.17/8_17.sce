//properties of root loci
s=%s
sys=syslin('c',(s+3)/(s*(s+5)*(s+6)*(s^2+2*s+2)))
d=denom(sys)
n=numer(sys)
p=roots(d)
z=roots(n)
disp(p,"poles of sys=")
disp(z,"zeroes of sys=")
n=length(p)
m=length(z)
disp(n,"no of poles=")
disp(m,"no of zeroes=")
if (n>m) then
    disp(n,"no of branches of RL=")
else
    disp(m,"no of branches of CRL=")
end
printf("the root loci are symmetrical with respect to the real axis of the plane")
