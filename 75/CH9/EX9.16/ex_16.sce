        //    PG (624)

A1 = [2 1 0;1 3 1;0 1 4]
lam = spec(A1)'
[Q1,R1] = qr(A1);
A2 = R1 * Q1
[Q2,R2] = qr(A2);
A3 = R2 * Q2
[Q3,R3] = qr(A3);
A4 = R3 * Q3
[Q4,R4] = qr(A4);
A5 = R4 * Q4
[Q5,R5] = qr(A5);
A6 = R5 * Q5
[Q6,R6] = qr(A6);
A7 = R6 * Q6
[Q7,R7] = qr(A7);
A8 = R7 * Q7
[Q8,R8] = qr(A8);
A9 = R8 * Q8
[Q9,R9] = qr(A9);
A10 = R9 * Q9
[Q10,R10] = qr(A10);