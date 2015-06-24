//value theorem//
p=poly([0.38],'s','coeff');
q=poly([0 0.543 2.48 1],'s','coeff');
F=p/q;

syms s;
x=s*F;
y=limit(x,s,0);  // final value theorem
y=dbl(y);
disp(y,"f(inf)=")
z=limit(x,s,%inf) // // initial value theorem
z=dbl(z); 
disp(z,"f(0)=")
