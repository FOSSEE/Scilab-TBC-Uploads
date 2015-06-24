// Network Synthesis : example 12.5 : (pg 12.3 & 12.4)
s=poly(0,'s');
p1=((s^4)+(2*(s)^2)+2);
p2=((s^3)+(3*s));
[r,q]=pdiv(p1,p2);
[r1,q1]=pdiv(p2,r);
[r2,q2]=pdiv(r,r1);
[r3,q3]=pdiv(r1,r2);
printf("\nEven part of P(s) = ((s^4)+(2*(s)^2)+2)");
printf("\nOdd part of P(s) = (s^3)+(3s)");
printf("\nQ(s)= m(s)/n(s)");
// values of quotients in continued fraction expansion
disp(q);
disp(q1);
disp(q2);
disp(q3);
printf("\nSince two terms are negative, P(s) is  not hurwitz");