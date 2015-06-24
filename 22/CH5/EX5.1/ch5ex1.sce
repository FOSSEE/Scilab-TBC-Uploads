//signals and systems
// Ztransform of x[n]  = (a)^n.u[n]
syms n z;
a = 0.5;
x =(a)^n;
n1=0:10;
plot2d3(n1,a^n1); xtitle('a^n','n');
plot(n1,a^n1,'r.')
X = symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")