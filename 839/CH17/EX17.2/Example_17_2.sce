//clear//
clear;
clc;

//Example 17.2
//Given
Nreal = 7;
VbyL = 1.5;
m = 0.8;
yb = 0;
xb_star = 0;
//xb=0.1*xa;

//(a)
//Stripping Factor
S = m*VbyL;
//From an ammonia balance,
//ya =0.9*xa/VbyL;
//Also
//xa_star = ya/m 
//Using Eq.(17.28)
//N = ln((xa-0.75*xa)/(0.1*xa-0))/ln(S)
N = log(0.25/0.1)/log(S);
disp(N,'Number of ideal trays required are')
stage_eff = N/Nreal*100;
disp('%',stage_eff,'Stage Efficiency is')

//(b)
VbyL = 2;
S = m*VbyL;
//Then,
//Let A = (xa-xa_star)/xb
A = exp(5.02);
//Let 'f' be the fraction of NH3 removed. Then xb = (1-f)*xa.
//By a material balance
//y  = L/V*(xa-xb) = 1/2*(xa-(1-f)*xa)= 1/2*f*xa
//xa_star = ya/m = 0.5*f*xa/0.8 = 0.625*f*xa
//Thus, 
//xa-xa_star = (1-0.625*f)*xa
//Also,
//xa-xa_star = 10.59*xb = 10.59*(1-f)*xa
//from these
f = 0.962
disp('%',f,'percentage removal obtained in this case is')  
