// Network Synthesis : example 12.10 : (pg 12.6 & 12.7)
s=poly(0,'s');
p1=((s^5)+((s^3))+(s));
p2=((5*(s^4))+3*(s^2)+1);
[r,q]=pdiv(p1,p2);
[r1,q1]=pdiv(p2,r);
[r2,q2]=pdiv(r,r1);
[r3,q3]=pdiv(r1,r2);
[r4,q4]=pdiv(r2,r3);
printf("\n P(s) = ((s^5)+((s^3))+(s))");
printf("\n d/ds.P(s)= ((5*(s^4))+3*(s^2)+1)");
printf("\nQ(s)=P(s)/d/ds.P(s)");
// values of quotients in continued fraction expansion
disp(q);
disp(q1);
disp(q2);
disp(q3);
disp(q4);
printf("\nSince two quotient terms are negative, P(s) is not hurwitz");
