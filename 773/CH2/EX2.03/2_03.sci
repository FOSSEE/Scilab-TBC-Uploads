//value theorem//
p=poly([9 1],'s','coeff')
q=poly([3 7 1],'s','coeff')
f=p/q;
disp(f,"F(s)=")
x=s*f;
y=limit(x,s,0); // final value theorem
disp(y,"f(inf)=")
z=limit(x,s,%inf); // initial value theorem
disp(z,"f(0)=")
