

//example 2.1
//calculate time required to cover 0.1 hectare area by tubewell
clc;
//Given
Q=0.0108,   //discharge through well
y=0.075,   //average depth of flow
I=0.05,   //average infiltration rate
A=0.1,   //area to cover
t=(60*2.303*y*log10(Q/(Q-I*A)))/I,
t=round(t);
mprintf("Time required to cover given area=%f minutes.",t);
