//function//
ieee(2)
A=[-3 0 0;0 -1 1 ; 0 0 -1]
B=[0;1;0]
s=poly(0,'s');
[Row Col]=size(A)    //Size of a matrix
m=s*eye(Row,Col)-A   //sI-A
n=det(m)            //To Find The Determinant of si-A
p=inv(m);          // To Find The Inverse Of sI-A
syms t s;
disp(p,"phi(s)=") //Resolvent Matrix
