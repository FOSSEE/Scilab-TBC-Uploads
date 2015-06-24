//symsum//
syms n z;
x=(-0.5)^n
y=(4*((0.2)^n))
f1=symsum(x*(z^(-n)),n,0,%inf)
f2=symsum(y*(z^(-n)),n,0,%inf)
y=(f1+f2);
disp(y,"ans=")

