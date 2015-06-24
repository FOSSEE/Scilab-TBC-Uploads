
// Ex6_14

clc;

// Given:

mEs=249.0762;
mn=1.0087;
mGd=160.9286;
mBr=86.922;

// Solution:
dm=(mEs-(mGd+mBr+mn));// delta m
E=dm*931;// energy of given fission in MeV
printf("The energy for the given fission is = %f MeV",E)
