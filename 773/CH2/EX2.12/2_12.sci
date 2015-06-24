//ilaplace//
s=%s;
p=poly([3 1],'s','coeff');
q=poly([0 -1 -2],'s','roots');
F=p/q;
syms t s;
y=ilaplace(F,s,t);
disp(y,"f(t)=")
