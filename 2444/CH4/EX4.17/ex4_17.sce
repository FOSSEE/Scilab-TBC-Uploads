// Exa 4.17
clc;
clear;
close;
format('v',7)
// Given data
h_ie = 2600;// in ohm
h_fe = 100;
h_re = 0.02*10^-2;
h_oe = 5*10^-6;// in S
h_ic = h_ie;// in ohm
disp(h_ic,"The value of h_ic in ohm is");
h_fc = -(1+h_fe);
disp(h_fc,"The value of h_fc is");
h_rc = 1 - h_re;
h_rc = 1;
disp(h_rc,"The value of h_rc is");
h_oc = h_oe;// in S
disp(h_oc,"The value of h_oc in S is");
