disp('Given vectors are:')
v1=[2;-1;-3;1]
v2=[1;1;0;-1]
z=[3;-7;2;3]
disp(z,'z=',v2,'v2=',v1,'v1=')
a=v1'*v2
disp(a,'v1.v2=')
if(a==0)
  disp('v1 and v2 are orthogonal')
end
disp('By best spproximation theorem, closest point in span{v1 v2} to z is the orthogonal projection')
disp('=((z.v1)/(v1.v1))*v1+((z.v2)/(v2.v2))*v2')
a1=z'*v1
a2=v1'*v1
b1=z'*v2
b2=v2'*v2
disp((a1/a2)*v1,'+',(b1/b2)*v2,'=')
disp((a1/a2)*v1+(b1/b2)*v2,'=')