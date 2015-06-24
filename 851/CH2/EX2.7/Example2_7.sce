//clear//
//Caption:Significance of the Channel Coding theorem
//Example2.7: Significance of the channel coding theorem
//Average Probility of Error of Repetition Code
clear;
clc;
close;
p =10^-2;
pe_1 =p; //Average Probility of error for code rate r = 1
pe_3 = 3*p^2*(1-p)+p^3;//probility of error for code rate r =1/3
pe_5 = 10*p^3*(1-p)^2+5*p^4*(1-p)+p^5;//error for code rate r =1/5
pe_7 = ((7*6*5)/(1*2*3))*p^4*(1-p)^3+(42/2)*p^5*(1-p)^2+7*p^6*(1-p)+p^7;//error for code rate r =1/7
r = [1,1/3,1/5,1/7];
pe = [pe_1,pe_3,pe_5,pe_7];
a=gca();
a.data_bounds=[0,0;1,0.01];
plot2d(r,pe,5)
xlabel('Code rate, r')
ylabel('Average Probability of error, Pe')
title('Figure 2.12 Illustrating significance of the channel coding theorem')
legend('Repetition codes')
xgrid(1)
disp('Table 2.3 Average Probility of Error for Repetition Code')
disp('_______________________________________________________________')
disp(r,'Code Rate, r =1/n',pe,'Average Probility of Error, Pe')
disp('_______________________________________________________________')
