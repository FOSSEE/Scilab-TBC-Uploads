
//Ex4_23
clc;

// Given:

t=1.83*10^9;// in years
// Solution:
// Part (a)
k=(0.693)/(t*3.16*10^7);
k1=(0.693*10^17)/(t*3.16*10^7);// in 10^-17 s^-1
printf("\n The overall decay constant will be %f*10^-17 s^-1",k1)
// Part (b)
a=(6.022*10^23)/40; // atoms of K(40)
A=a*k;// activity
printf("\n The activity for k(40) is %f beta/s",A)

// Part (c)
a1=(6.022*10^23*1.2*10^-4)/41; // atoms of K(41)
A1=a1*k;// activity
printf("\n The activity for k(41) is %f beta/s",A1)


