// Example 4_8
clc;funcprot(0);
// Given data
phi_e=120;// V
R=144;// ohm
t=1.50;// h

// Solution
// (a)
i_e=phi_e/R;// A
W_12=-phi_e*i_e*t;// The electrical current work in W.h
// (b)
W_ec=-phi_e*i_e;// W
printf('\n(a)The electrical current work,W_12=%3.0f W.h \n(b)The electrical power consumption,W_electrical current=%3.0f W',W_12,W_ec);
