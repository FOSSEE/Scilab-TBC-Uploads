//function//
A=[0 1;-6 -5]
[Row Col]=size(A)//Size of a matrix
l=poly(0,'l');
m=l*eye(Row,Col)-A  //lI-A
n=det(m) //To Find The Determinant of li-A
roots(n) //To Find The Value Of l
