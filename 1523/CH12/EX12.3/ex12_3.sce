// Network Synthesis : example 12.3 : (pg 12.2 & 12.3)
s=poly(0,'s');
p1=((s^3)+(5*(s)));
p2=((4*s^2)+(2));
[r,q]=pdiv(p1,p2);
[r1,q1]=pdiv(p2,r);
[r2,q2]=pdiv(r,r1);
printf("\nEven part of P(s) = ((4*s^2)+(2))");
printf("\nOdd part of P(s) = ((s^3)+(5*(s)))");
printf("\nQ(s)= n(s)/m(s)");
// values of quotients in continued fraction expansion
disp(q);
disp(q1);
disp(q2);
printf("\nSince all the quotient terms are positive, P(s) is hurwitz");
