Syms t
s=%s
H=5
disp('given')
disp('H=5')
disp('poles are -1 and -3')
disp('The transfer function is ')
disp('5s/(s+1)(s+3)')
sysl=syslin('c',5*s/(s+1)*(s+3))
evans(sysl,100)
[h]=trfmod(sysl,0)
//referring the root locus graph 
x=1*imag(exp(-180))
y=2*imag(exp(-0))
k1=H*(x/y)
k2=H*(y/x)
disp('The current therefore is')
i=k1*exp(-t)+k2*exp(-3*t)
disp(i)
