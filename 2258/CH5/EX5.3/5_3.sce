clc();
clear;
// To calculate the penetration depth
lamda_T=75;       // penetration depth in nm
T=3.5;        //temperature in K
HgTc=4.12;       //in K
lamda_0=lamda_T*sqrt(1-((T/HgTc)^4));
printf("the pentration depth at 0k is %f nm",lamda_0);
