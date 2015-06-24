
// Ex10_13

clc;

// Given:
w=5;// in g
ai=55;// counts per 10 min
A0=15.8;// in dpm/g
// Solution:

cpm=55/10;
dpm=cpm*100/10; // 10% efficient counting
sa=dpm/w;// in dpm/g
t=5730*log(A0/sa)/(0.693); // Age determination

printf("The age of the sample is = %f years",t)
