disp('To show that the given matrix P is orthogonal.')
p=[.6 .8;.8 -.6]
disp(p,'P=')
disp('P is composed of two vectors.')
p1=[.6;.8]
p2=[.8;-.6]
disp(p2,'p2=',p1,'p1=')
disp('To show that the columns are orthonormal')
disp('p1.p2=')
s=p1'*p2
r=p1'
disp(p2,'*',r,'=')
disp(s,'=')
if(s==0)
  disp('The columns of P are othonormal')
end
disp('||p1||=')
disp(sqrt(p(1,1)^2+p(2,1)^2))
disp('||p2||=')
disp(sqrt(p(1,2)^2+p(2,2)^2))
disp('Hence, ||p1||=||p2||=1. Thus P is an orthogonal matrix')