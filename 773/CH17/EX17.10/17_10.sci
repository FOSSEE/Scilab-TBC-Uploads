//function//
A=[-2 1;0 -3]
B=[0;1]
C=[1 1]
s=poly(0,'s');
[Row Col]=size(A)    //Size of a matrix
m=s*eye(Row,Col)-A  //sI-A
n=det(m)    //To Find The Determinant of si-A
p=inv(m)      // To Find The Inverse Of sI-A
y=C*p*B  ;     //To Find C*(sI-A)^-1*B
disp(y,"Transfer Function=")
