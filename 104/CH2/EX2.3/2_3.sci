//final value thereom
syms s
d=poly([0 2 1 1],'s','coeff')
n=poly([5],'s','coeff')
f=n/d;
disp(f,"F(s)=")
x=s*f;
y=limit(x,s,0); // final value theorem
disp(y,"f(inf)=")
