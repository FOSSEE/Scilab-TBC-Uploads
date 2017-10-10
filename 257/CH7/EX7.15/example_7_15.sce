syms A s t

G=(A)/(s+A);
R=1/s;                            //unit step input
C=G*R;
c=ilaplace(C,s,t);
disp(c," c(t) = ")

A=-log(1-0.95)/60                 //system attains 95% of final value at t=60
disp(A," A = ") 







