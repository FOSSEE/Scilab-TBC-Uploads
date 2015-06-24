//Example 9.3 : maximum length of surfacef 
clc;
clear;
close;
format('v',7)
//given data :
sigma=36;//in MN/m^2
gama=0.27;// in J/m^2
E=70*10^9;//in N/m^2
C=((2*E*gama)/(sigma^2*%pi))*10^-6;
C2=2*C;
disp(C2,"maximum length of surface flow,C2(micro-m) =   ")
