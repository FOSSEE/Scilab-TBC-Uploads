
// Ex4_31
clc;
// Given:
t=12.8;// hours
// Solution:
k=0.693/t;// decay constant
//part(a)by EC
kEC=0.42*k;
printf("Decay by EC")
printf("\n\t The decay constant is %f h^-1",kEC)
tEC=0.693/kEC;
printf("\n\t The half life is %f h",tEC)

//part(b)by beta+
kbeta1=0.19*k;
printf("\nDecay by beta+")
printf("\n\t The decay constant is %f h^-1",kbeta1)
tbeta1=0.693/kbeta1;
printf("\n\t The half life is %f h",tbeta1)

//part(b)by beta+
kbeta2=0.39*k;
printf("\nDecay by beta-")
printf("\n\t The decay constant is %f h^-1",kbeta2)
tbeta2=0.693/kbeta2;
printf("\n\t The half life is %f h",tbeta2)
