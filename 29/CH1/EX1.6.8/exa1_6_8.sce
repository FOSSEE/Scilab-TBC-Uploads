//Caption:steady_state_value
// example 1.6.7
//page 12
//X(s)=s/(s^2*(s^2+6*s+25))
p=poly([0 1],'s','coeff');
q=poly([0 0 25 6 1],'s','coeff');
F=p/q;
syms s
x=s*F;
y=limit(x,s,0);//final value theorem
y=dbl(y)
disp(y,"x(inf)=")//result