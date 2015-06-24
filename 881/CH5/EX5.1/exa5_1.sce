clc;
//Example 5.1
//Page no 159

//solution

Brf=200; //kHz
Bif=10; //kHz

//Bandwidth improvement is found by substituting into equati
BI=(Brf/Bif);

disp(BI,"BI = ");

disp("and noise figure improvement is found by substituting into equation 5-3 (refer pgno 157)");

NF=10*log10(BI);

disp('dB',NF,"NF = ")
