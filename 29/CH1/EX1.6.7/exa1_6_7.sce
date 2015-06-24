//Caption:final_value
// example 1.6.7
//page 12
//X(s)=100/(s*(s^2+2*s+50))
p=poly([100],'s','coeff');
q=poly([0 50 2 1],'s','coeff');
F=p/q;
syms s
x=s*F;
y=limit(x,s,0);//final value theorem
y=dbl(y)
disp(y,"x(inf)=")//result