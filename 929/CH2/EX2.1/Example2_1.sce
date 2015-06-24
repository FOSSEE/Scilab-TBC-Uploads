//Example 2.1

clear;

clc;

R=1*10^6;

a=200*10^3;//Open Loop Gain for ic741

rd=2*10^6;//defined for 741

ro=75;//internal output resistance defined for 741

Tnum=a*rd;

Tden=rd+R+ro;

T=Tnum/Tden;//Loop Gain

Anum=-R;

Aden=1+(1/T);

A=Anum/Aden;//Oveall Gain

Rinumn=rd*(R+ro);

Rinumd=rd+R+ro;

Rinum=Rinumn/Rinumd;

Riden=1+T;

Ri=Rinum/Riden;//Input resistance

Ronum=ro;

Roden=1+T;

Ro=Ronum/Roden;//Ouput Resistance (Value obtained for Ro in the book is wrong)

printf("T=%.f",T);

printf("\nA=%.6f V/uA",A*10^(-6));

printf("\nRi=%.1f ohms",Ri);

printf("\nRo=%.3f mohms",(Ro*(10^3)));//answer in textbook is wrong