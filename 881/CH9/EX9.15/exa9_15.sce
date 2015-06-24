clc;
//Example 9.15
//Page No 382


//solution

ebn0=14.7;
cn=11.7;
fb=10;

disp("From Figure 9-48,");

bfb=ebn0-cn;

Bfb=exp(log10(bfb));

disp('dB',round(Bfb),"B/fb = ");

B=2*fb;

disp('MHz',B,'B = ');
