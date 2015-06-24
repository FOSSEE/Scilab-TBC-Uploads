clc;
//Example 14.3
//Page No 603

//Solution

D=40;
f=1.8;
o=0.9999;

disp("Substituting into equation 14-34, ");

Fm=([30*log10(D)]+[10*log10([6*4*0.5*f])]-[10*log10(1-o)]-70);

disp('dB',Fm,"Fm = ")
