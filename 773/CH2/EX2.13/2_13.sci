//ilaplace//
s=%s;
p=poly([3 1],'s','coeff');
q=poly([0 -1 -1 -2],'s','roots');
f=p/q;
syms t s;
y=ilaplace(f,s,t);
disp(y,"f(t)=")
