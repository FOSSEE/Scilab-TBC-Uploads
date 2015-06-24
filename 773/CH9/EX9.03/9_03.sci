//calculates//
s=%s;
G=syslin('c',40/(s*(s+4)))
H=0.50;
y=G*H;
S=1/(1+y);
disp(S,"1/(1+G(s)*H(s))")
//given w=1.3
w=1.3
s=%i*w
S=horner(S,s)
a=abs(S)
disp(a,"sensitivity of open loop")
F=-y/(1+y)
disp(F,"(-G(s)*H(s))/(1+G(s)*H(s))")
S=horner(F,s)
b=abs(S)
disp(b,"sensitivity of closed loop")
