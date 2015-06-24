//Ex 1.40.19
clc;clear;close;
format('v',9);

//Given : 
NA=9*10^16;//per cm^3
ND=1*10^16;//per cm^3
w_total=3;//micro meter
w_p=w_total*ND/NA;//micro meter
disp(w_p,"Answer is (B). Depletion width on p-side(micro meter) : ");
