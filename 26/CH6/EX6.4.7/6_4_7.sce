disp('to orthogonalise the given vectors using Gram-Schimdt orthogonalisation')
x1=[2;-5;1]
x2=[4;-1;2]
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
disp('Normalizing v1 and v2, we get')
s1=sqrt(v1(1,1)^2+v1(2,1)^2+v1(3,1)^2)
s2=sqrt(v2(1,1)^2+v2(2,1)^2+v2(3,1)^2)
disp(v2/s2,v1/s1)