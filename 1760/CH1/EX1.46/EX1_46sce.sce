             //EXAMPLE 1-46     PG NO37
A=[85 -25;-25 135];         // Finding current
B=[60;100];
X=A\B;             //  current
disp('i)CURRENT = '+string (X)+' A')
I1=0.977;
I2=0.922;        //WE HAVE FOUNDED  I1 and I2
I3=I1-I2;
disp('ii)CURRENT = '+string (I3)+' A')
