
// Ex2_22
clc;

// Given:
A1=176;
A2=233;
R1=1.4*10^-15*((A1)^(1/3));
R2=1.4*10^-15*((A2)^(1/3));
// Soluiton:
//Part a

sqrBMinusSqrA = (5 * 7 * (10^ (-28))) /(2 * 71);

BMinusA = sqrBMinusSqrA / (2 * R1);

ellipticity = 2 * (BMinusA) / (2 * R1);

printf("Ellipticity is = %f\n",ellipticity);

b = (BMinusA + (2 * R1)) /2;
a = (-BMinusA + (2 * R1)) /2;

printf("b/a is = %f\n",b/a);

//Part B


sqrBMinusSqrA = -(5 * 3 * (10^ (-28))) /(2 * 91);

BMinusA = sqrBMinusSqrA / (2 * R2);

ellipticity = 2 * (BMinusA) / (2 * R2);

printf("Ellipticity is = %f\n",ellipticity);

b = (BMinusA + (2 * R2)) /2;
a = (-BMinusA + (2 * R2)) /2;

printf("b/a is = %f",b/a);
