//Example 3_4
clc;
clear;
close;
format('v',5);
//given data :
//Let T=1 for calculation
T=1;
//i=5*t/T+5;//A
Iav=1/T*integrate('5*t/T+5','t',0,T);
disp(Iav,"Average value(A)");
Irms=sqrt(1/T*integrate('(5*t/T+5)^2','t',0,T));//V
disp(Irms,"rms value(A)");
//Answer is not accurate in the book.
