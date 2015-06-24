//Exa 2.3
clc;
clear;
close;

disp("For single phase ac system, P1=V*I1*cosd(fi) watts & W1=2*I1^2*R watts");
disp("Line losses=W1/P1*100=2*I1^2*R*100/V/I1/cosd(fi)");
disp("For three phase ac system, P2=sqrt(3)*V*I2*cosd(fi) watts & W2=3*I2^2*R watts");
disp("Line losses=W2/P2*100=3*I2^2*R*100/sqrt(3)/V/I2/cosd(fi)");
//on equating W1/P1*100=W2/P2*100
I2BYI1=2*sqrt(3)/3;
P1=poly(0,'P1');
//P2=sqrt(3)*V*I1*I2BYI1*cosd(fi)=2*P1
P2=2*P1;
Add_load=P2-P1;
Percent_add_load=coeff(numer(Add_load/P1*100));//%
disp(Percent_add_load,"Additional load that can be tranmitted by converting sigle to 3-phase line in %");
