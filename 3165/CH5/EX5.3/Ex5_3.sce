//Example 5 .3
//Program to c a l c u l a t e g i v e n FIR F i l t e r ' s L a t t i c e form c o e f f i c i e n t s .
clc ;
U =1; // Ze ro Adjus t
a (3+U ,0+U) =1;
a (3+U ,1+U) =2/5;
a (3+U ,2+U) =3/4;
a (3+U ,3+U) =1/3;
a (2+U ,0+U) =1; // a (m, 0 )=1
a (2+U ,3+U) =1/3;
m=3,k=1;
a(m -1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1 -a(m+U,m+U)*a(m+U,m+U));
m=3,k=2;
a(m -1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1 -a(m+U,m+U)*a(m+U,m+U));
m=2,k=1;
a(m -1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1 -a(m+U,m+U)*a(m+U,m+U));
disp (a(1+U ,1+ U), ' k1 ' );
disp (a(2+U ,2+ U), ' k2 ' );
disp (a(3+U ,3+ U), ' k3 ' );
