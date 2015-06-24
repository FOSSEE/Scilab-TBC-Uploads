//example 4.51
//calculate total infiltration depth lasting 6 hrs
clc;funcprot(0);
//given
I=10;           //total infiltration rate
fI=5;           //final infiltration rate
k=0.95;         //rate of decay of difference between final and initial infiltration rate

q=integrate('fI+(I-fI)*%e^(-k*t)','t',0,6);
q=round(q*100)/100;
mprintf("total infiltration depth=%f mm.",q);


