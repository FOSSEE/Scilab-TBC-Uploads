//Scilab Code for Example 8.12 of Signals and systems by
//P.Ramakrishna Rao
//Second Order LSI system
z = %z;
s = %s;
X=z^-1/(0.7*z^-2-3.7*z^-1+3);
[A]=pfss(z^-1/(0.7*z^-2-3.7*z^-1+3))
x1 = horner(A(1),z)
x2 = horner(A(2),z)
q=denom(X);
a=roots(q)
H=[x1 x2 z/3];
disp(H,'(a) H(z)=');
clear z;
syms z n;
F1 = ((1/6)*(z/(z-1))*z^(n-1)*(z-a(1)))
F2 = ((0.7/54)*(z/(z-0.233333))*z^(n-1)*(z-a(2)))
w1=limit(F1,z,a(1))
w2=limit(F2,z,a(2))
w=w1+w2;
disp(w,'(b) h(n))=');
z=%z;
x11=z*x1/3
x12=z*x2/3
disp(x11,"(c) Parallel realization: H1(z)");
disp(x12," H2(z)")
