//inverse laplace transform
n=poly([4],'s','coeff')
d=poly([4 8 1],'s','coeff')    //w=2,damping ratio=2
G=n/d;
disp(G,"G(s)=")
pf=pfss(G)
disp(pf,"G(s)=")
syms s t
g1=ilaplace(pf(1),s,t)
g2=ilaplace(pf(2),s,t)
disp(g1+g2,"g(t)=")
