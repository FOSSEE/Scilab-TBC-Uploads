//chapter1
//example1.7
//page14

V=50 // V
Rl=100 // ohm
Zi=100+50*%i
//for maximum power transfer load impedence should be conjugate of internal resistance so
Zl=100-50*%i

Zt=Zi+Zl
I=V/Zt
P=I^2*Rl

printf("load for maximum power (in ohms)=")
disp(Zl)

printf("maximum power transfered to load=%.3f W",P)
