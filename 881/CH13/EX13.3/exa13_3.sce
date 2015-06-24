clc;
//Example 13.3
//Page No



//solution

al=0.25*100;
Pt=1*10^-4;

disp("Substituting in equation 13-15, ");

p=Pt*(10^(al/10));

disp('uW',p*10,"P = ");

P=10*log10(p*10^-5/0.001);

disp('uW',P,"P(dB) = ");
