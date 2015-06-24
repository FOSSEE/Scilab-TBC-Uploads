// Network Synthesis : example 12.4 : (pg 12.3)
s=poly(0,'s');
p1=((s^4)+(3*(s)^2)+12);
p2=((s^3)+(2*s));
[r,q]=pdiv(p1,p2);
[r1,q1]=pdiv(p2,r);
[r2,q2]=pdiv(r,r1);
[r3,q3]=pdiv(r1,r2);
printf("\nEven part of P(s) = ((s^4)+(3*(s)^2)+12)");
printf("\nOdd part of P(s) = ((s^3)+(2*s))");
printf("\nQ(s)= m(s)/n(s)");
// values of quotients in continued fraction expansion
disp(q);
disp(q1);
disp(q2);
disp(q3);
printf("\nSince two quotient terms are negative, P(s) is  not hurwitz");
