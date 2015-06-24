

// Ex2_23
clc;

// Given:
e = 0.03;
A=75;
R=1.4*10^-15*((A)^(1/3));
// Soluiton:

BPlusA = 2 * R;

BMinusA = e * R;
sqrBMinusSqrA = BPlusA * BMinusA;

BMinusA = sqrBMinusSqrA / (2 * R);

Q = (2*33*sqrBMinusSqrA)/5;
q1=Q/10^-28;
printf("Quadrapole moment is = %f in barns",q1);

