
// Ex4_30
clc;
// Given:
t=2.6;// years
// Solution:
k=0.693/t;// decay constant
//part(a)
kbeta=0.89*k;
printf("\n The decay constant is %f y^-1",kbeta)
kEC=0.11*k;
printf("\n The decay constant is %f y^-1",kEC)
//part(b)
tbeta=0.693/kbeta;
printf("\n The half life is %f y",tbeta)
tEC=0.693/kEC;
printf("\n The half life is %f y",tEC)
