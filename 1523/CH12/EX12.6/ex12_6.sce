// Network Synthesis : example 12.6 : (pg 12.4)
s=poly(0,'s');
p1=((2*(s^4))+(6*(s)^2)+1);
p2=((5*(s^3))+(3*s));
[r,q]=pdiv(p1,p2);
[r1,q1]=pdiv(p2,r);
[r2,q2]=pdiv(r,r1);
[r3,q3]=pdiv(r1,r2);
printf("\nEven part of P(s) = ((2*s^4)+(6*(s)^2)+1)");
printf("\nOdd part of P(s) = ((5*s^3)+(3*s))");
printf("\nQ(s)= m(s)/n(s)");
// values of quotients in continued fraction expansion
disp(q);
disp(q1);
disp(q2);
disp(q3);
printf("\nSince all the quotient terms are positive, P(s) is hurwitz");
