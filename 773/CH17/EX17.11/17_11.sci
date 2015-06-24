//function//
A=[0 1;-6 -5]
x=[1;0];
disp(x,"x(t)=')
s=poly(0,'s');
[Row Col]=size(A)    //Size of a matrix
m=s*eye(Row,Col)-A   //sI-A
n=det(m)             //To Find The Determinant of si-A
p=inv(m) ;           // To Find The Inverse Of sI-A
syms t s;
disp(p,"phi(s)=")   //Resolvent Matrix
for i=1:Row
for j=1:Col
//Taking Inverse Laplace of each element of Matrix phi(s)
q(i,j)=ilaplace(p(i,j),s,t);  
end;
end;
disp(q,"phi(t)=")//State Transition Matrix
r=inv(q);  
r=simple(r); //To Find phi(-t)
disp(r,"phi(-t)=")
y=q*x; //x(t)=phi(t)*x(0)
disp(y,"Solution To The given eq.=")
