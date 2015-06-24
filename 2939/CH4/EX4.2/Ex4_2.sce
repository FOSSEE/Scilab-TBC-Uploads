
// Ex4_2
clc;

// Given:
t1=1.3*10^9;// in years
w=0.0119;// wt %

// Solution:
N=(w*6.022*10^23)/(40*100);
k=(0.693*60)/(t1*3.16*10^7);
sa=N*k;// specific activity
printf("The specific activity is = %f dis min^-1 g^-1",sa)
