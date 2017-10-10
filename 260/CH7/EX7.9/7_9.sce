//Eg-7.9
//pg-355

clear
clc

y = [2 9 24 47 78];

t = [0 1 2 3 4];

//since P0 = 1 b0 will be as

P0 = [1 1 1 1 1];
b0 = sum(y)/5;

//P1 = t-G1

G1 = sum(t)/5;

//b1 = summation(P1*y)/summation(P1^2)

P1 = t - [G1 G1 G1 G1 G1];

b1 = sum(P1.*y)/sum(P1^2);


//P2 = (t-G2)P1 - d2

//G2 = summation(t*P1^2)/summation(P1^2)

G2 = sum(t.*P1^2)/sum(P1^2);

//d2 = summation(t*P1*P0)/summation(P0^2)

d2 = sum(t.*P1.*P0)/sum(P0^2);

P2 = (t-[G2 G2 G2 G2 G2]).*P1 - [d2 d2 d2 d2 d2]

b2 = sum(P2.*y)/sum(P2^2);

printf('Therefore the expression is V = (%f)P0 + (%f)P1 + (%f)P2,\n where P0 = 1, P1 = (t-2), P2 = (t-2)\n\n Finally V = 4*t^2 + 3*t + 2\n\n',b0,b1,b2)