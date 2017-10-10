syms t s
p=poly([1 2],'s','coeff');
q=poly([0 1 2 1],'s','coeff');
T=p/q //gain FACTOR=40
R=1/s;
C=R*T;
c=ilaplace(C,s,t)
disp(c," c = ")