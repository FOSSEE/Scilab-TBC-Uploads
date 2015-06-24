disp('to orthogonalise the given vectors using Gram-Schimdt orthogonalisation')
x1=[3;0;-1]
x2=[8;5;-6]
disp(x2,'x2=',x1,'x1=')
disp('Let v1=x1')
v1=x1
disp('v2=x2-((x2.v1)/(v1.v1))*v1')
a1=x2'*v1
a2=v1'*v1
p=(a1/a2)*v1
v2=x2-p
disp(p,'-',x2,'=')
disp(v2,'=')
disp('Thus, an orthogonal basis is:')
disp(v2,v1)