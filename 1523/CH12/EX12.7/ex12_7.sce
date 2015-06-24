// Network Synthesis : example 12.7 : (pg 12.4 & 12.5)
s=poly(0,'s');
p1=((s^4)+(6*(s)^2)+8);
p2=(7*(s^3)+(21*s));
[r,q]=pdiv(p1,p2);
[r1,q1]=pdiv(p2,r);
[r2,q2]=pdiv(r,r1);
[r3,q3]=pdiv(r1,r2);
printf("\nEven part of P(s) = ((s^4)+(6*(s)^2)+8)");
printf("\nOdd part of P(s) = (7*(s^3)+(21*s))");
printf("\nQ(s)= m(s)/n(s)");
// values of quotients in continued fraction expansion
disp(q);
disp(q1);
disp(q2);
disp(q3);
printf("\nSince all the quotient terms are positive, P(s) is hurwitz");
