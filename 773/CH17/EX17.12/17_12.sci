//function//
A=[0 1;-6 -5]
B=[0;1]
x=[1;0]
disp(x,"x(t)=')
s=poly(0,'s');
[Row Col]=size(A)   //Size of a matrix A
m=s*eye(Row,Col)-A //sI-A
n=det(m)          //To Find The Determinant of si-A
p=inv(m) ;        // To Find The Inverse Of sI-A
syms t s m;
disp(p,"phi(s)=") //Resolvent Matrix
for i=1:Row
for j=1:Col
//Inverse Laplace of each element of Matrix(phi(s))
q(i,j)=ilaplace(p(i,j),s,t);
end;
end;
disp(q,"phi(t)=") //State Transition Matrix
t=(t-m);
q=eval(q)       //At t=t-m ,evaluating q i.e phi(t-m)
//Integrate q w.r.t m(Indefinite Integration)
r=integ(q*B,m)      
m=0            //Upper limit is t
g=eval(r)      //Putting the value of upper limit in q
m=t            //Lower Limit is 0
h=eval(r)      //Putting the value of lower limit in q
y=(h-g);
disp(y,"y=")
printf("x(t)= phi(t)*x(0) + integ(phi(t-m)*B) w.r.t m from 0 t0 t \n")
//x(t)=phi(t)*x(0)+integ(phi(t-m)*B) w.r.t m from 0 t0 t
y1=(q*x)+y;
disp(y1,"x(t)=")

