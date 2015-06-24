//Page Number: 10.36
//Example 10.20
clc;
//Given
c=sqrt(2);
A=sqrt(5);
N0=1; //W/Hz

d12sqr=4*A*A;

//As for two equiprobables
//Pe=Q(z)
//where z=sqrt(d12^2)/(2*N0)
z=sqrt((d12sqr)/(sqrt(2*N0)));
Pe=(1/2)*erfc(z/1.414);
disp(Pe,'Probabilty error:')
