// Example 9_7
clc;funcprot(0);
// Given data
r=10;// The compression ratio
P_1=30;// psia
T_1=200+460;// °R
T_3=1000+460;// °R
R=53;// Btu/lbm°R

// Calculation
w_34=R*T_3*log(r);// ft-lbf/lbm
w_12=R*T_1*log(1/r);// ft-lbf/lbm
w_out=w_34+w_12;// The work output in ft-lbf/lbm
n=1-(T_1/T_3);// The thermal efficiency
q_in=(w_out/778)/n;// The heat input in Btu/lbm
printf("\nThe work output,w_out=%5.0f ft-lbf/lbm \nThe heat input,q_in=%3.0f Btu/lbm",w_out,q_in);
