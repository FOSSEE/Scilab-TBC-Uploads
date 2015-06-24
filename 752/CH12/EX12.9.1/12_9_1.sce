clc;
//page no 435
//problem no 12.9.1
ENR=10;// energy to noise density ratio
Pbe1=1/2 * erfc(sqrt(ENR/2));
disp(Pbe1,'a)The bit error probability');
Pbe2=1/2 * %e^-(ENR/2);
disp(Pbe2,'b)The bit error probability');