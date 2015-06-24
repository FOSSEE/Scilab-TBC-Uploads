clc;
//Example 17.1
//Page No 690



//solution

p1=10*10^-3;
p2=0.5*10^-3;

disp("(a)The power levels, ");

P1=10*log10(p1/0.001);

disp('dBm',P1,"P = ");

P2=10*log10(p2/0.001)

disp('dBm',round(P2),"P = ");

disp("(b)The difference  ");

P=10*log10(p1/p2);

disp('dBm',round(P),"diff = ");

disp("The 10mW power level is 13dB higher than 0.5W power level. ");
