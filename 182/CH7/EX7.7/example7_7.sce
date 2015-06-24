// to determinr the required ratio of R/P
// example 7-7 in page 176
clc;
// Given data
S=0.1; Q=0.15; // resistances in ohm
//calculation
r=S/Q;// here R/P=S/Q
printf("the required ratio is %d/%d",(S*100),(Q*100));
//result
// the required ratio is 10/15