

//example 2.7
//calculate 
//time required to irrigate
//maximum area that can be irrigated
clc;
//Given
Q=0.0072;//discharge through well
y=0.1;//average depth of flow
I=0.05//infiltration capacity of soil
A=0.04//area of land
t=(2.303*y*60/I)*log10(Q/(Q-I*A));
Amax=Q/I;
t=round(t*100)/100;
mprintf("Time required to irrigate=%f minutes.",t);
mprintf("\nMaximum area that can be irrigated=%f ha.",Amax);
