//Example 11.14

clear;

clc;

TJmax=150;

TAmax=50;

VI=8;

thetaJA=60;

thetaJC=3;

PDmax=(TJmax-TAmax)/thetaJA;

TC=TJmax-(thetaJC*PDmax);

printf("(a) Maximum Power Dissipated (PDmax)=%.2f W",PDmax);

printf("\n    Case Temperature (TC)=%.f degCelsius",TC);

VO=5;

IOmax=PDmax/(VI-VO);

printf("\n\n(b) Maximum Current that can be drawn=%.3f A",IOmax);