//inverse laplace transform
n=poly([1000],'s','coeff')
d=poly([0 1000 34.5 1],'s','coeff')
Y=n/d;
disp(Y,"Y(s)=")
pf=pfss(Y)
disp(pf,"Y(s)=")
syms s t
y1=ilaplace(pf(1),s,t)
y2=ilaplace(pf(2),s,t)
y3=ilaplace(pf(3),s,t)
disp(y1+y2+y3,"y(t)=")
