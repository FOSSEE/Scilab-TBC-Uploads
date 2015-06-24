
// Ex2_21
clc;

// Given:
A=175;
R=1.4*10^-15*((A)^(1/3));
// Soluiton:
//Part a
sqrBMinusSqrA = (5.9 * (10^ (-28))) * 5 /(2 * 71);

BMinusA = sqrBMinusSqrA / (2 * R);

ellipticity = 2 * (BMinusA) / (2 * R);

printf("\n Ellipticity is = %f\n",ellipticity);

//Part B

b = (BMinusA + (2 * R)) /2;
a = (-BMinusA + (2 * R)) /2;

printf("\n b/a is = %f",b/a);
