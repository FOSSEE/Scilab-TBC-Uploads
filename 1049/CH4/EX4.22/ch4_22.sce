clear;
clc;
V_r=1000;    //rating of SCR
I_r=200;    //rating of SCR
V_s=6000;    //rating of String
I_s=1000;    //rating of String
disp("when DRF=.1");
DRF=.1;
n_s=V_s/(V_r*(1-DRF));    printf("number of series units=%.0f",ceil(n_s));
n_p=I_s/(I_r*(1-DRF));    printf("\nnumber of parrallel units=%.0f",ceil(n_p));
disp("when DRF=.2");
DRF=.2;
n_s=V_s/(V_r*(1-DRF));    printf("number of series units=%.0f",ceil(n_s));
n_p=I_s/(I_r*(1-DRF));    printf("\nnumber of parrallel units=%.0f",ceil(n_p));
