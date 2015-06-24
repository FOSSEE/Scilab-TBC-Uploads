// Scilab Code Example 1.11 Probability of obtaining both heads, one head and one tail, both tail, at least  one head
N=4;
disp(N,"Total No. of  possible outcomes (N)=");
M1=1;
disp(M1,"No. of Favorable cases(both head)=");
M2=2;
disp(M2,"No. of Favorable cases(one head & one tail)=");
M3=1;
disp(M3,"No. of Favorable cases(both tails)=");
M4=3;
disp(M4,"No. of Favorable cases(At least one head)=");
P1=M1/N;
P2=M2/N;
P3=M3/N;
P4=M4/N;
disp(P4,"P(atleast one head)= ",P3,"P(Both tails)=",P2,"P(one headand one tail)=",P1,"P(Both head)=");
