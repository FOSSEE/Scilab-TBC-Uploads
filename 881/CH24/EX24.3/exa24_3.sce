clc;
//Example 24.3
//Page No 988

disp("Given: Noise bandwidth is 10MHz");

//solution

f=10*10^6;

disp("Substituting in equation 24-16 yields, ");

N=-174+(10*log10(f));

disp('dBm',N,"N = ");

disp("If the minimum C/N requirement for a receiver ");

Cmin=24+N;

disp('dBm',Cmin,"N = ");

disp("For a system gain of 113.35dB, it would require a minimum transmit carrier power(Pt) of ")

Pt=113.35+Cmin;

disp('dBm',Pt,"N = ");
