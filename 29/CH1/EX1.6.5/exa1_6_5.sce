//Caption:initial_value
// example 1.6.5
//page 11
//I(s)=(C*s/(RCs+1))*E(s)
//given: E(s)=100/s,R=2 megaohm ,C=1 uF
// so, I(s)=(((1*10^-6)*s)/(2*s+1))*(100/s)
syms t
p=poly([0 10^-6],'s','coeff');
q=poly([1 2],'s','coeff');
r=poly([0 1],'s','coeff');
F1=p/q;
F2=1/r;
F=F1*F2
f=ilaplace(F,s,t);
z=limit(f,t,0);//initial value theorem
z=dbl(z);
disp(z,"i(0+)=")