//equation//
s = poly(0, "s");
p=poly([7],'s','coeff');
q=poly([ 2 3 1],'s','coeff');
G=p/q;
H=poly([0 1],'s','coeff');
//characteristic equation is 1+G(s)H(s)=0
y=1+G*H
r=numer(y)
disp('=0',r,"characteristics equation is")   
