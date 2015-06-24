//Example 12.17
//Probablity that R lies between 110 and 120 ohm
clc;
X0=110;
X1=120;
X=integrate('1/(130-100)','X',X0,X1);
disp(X,'The probability that R lies between 110 and 120 is :');
