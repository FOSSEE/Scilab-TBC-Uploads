// example:-3.8,page no.-108.
// program to calculate attenuation constant.
syms alpha R Rs L G C eta a b w pi eipsila eipsilac mue eta;
//from example 3.1:-alpha=(R*(sqrt(C/L)+G*sqrt(L/C));
eta=sqrt(mue/eipsila);
L=(mue/(2*pi))*(log(b/a));
C=(2*pi*eipsila)/log(b/a);
R=(Rs/(2*pi))*((1/a)+(1/b));
G=(2*pi*w*eipsilac)/log(b/a);
alpha=(1/2)*(R*sqrt(C/L)+G*sqrt(L/C));
disp(alpha,'attenuation constant = ')