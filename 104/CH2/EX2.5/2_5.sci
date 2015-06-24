//partial fractions
n=poly([3 5],'s','coeff')
d=poly([6 11 6 1],'s','coeff')
f=n/d;
disp(f,"F(s)=")
pf=pfss(f)
disp(pf)