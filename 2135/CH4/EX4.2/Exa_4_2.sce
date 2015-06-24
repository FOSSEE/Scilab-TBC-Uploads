//Exa 4.2
clc;
clear;
close;
format('v',8);

//Given Data :
T1=290+273;//Kelvin
T2=8.5+273;//Kelvin
Q1=300;//KJ
//Case 1 :
Q2=-215;//KJ
sigmaQbyT=Q1/T1+Q2/T2
disp(sigmaQbyT,"(i) Q1/T1+Q2/T2 = ");
disp("It is less than zero. Cycle is irreversible")
//Case 2 :
Q2=-150;//KJ
sigmaQbyT=Q1/T1+Q2/T2
disp(sigmaQbyT,"(ii) Q1/T1+Q2/T2 = ");
disp("It is equal to zero. Cycle is reversible");
//Case 3 :
Q2=-75;//KJ
sigmaQbyT=Q1/T1+Q2/T2
disp(sigmaQbyT,"(iii) Q1/T1+Q2/T2 = ");
disp("It is greater than zero. Cycle is impossible.");
