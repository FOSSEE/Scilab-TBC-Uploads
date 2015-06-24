//chapter 21
//example 21.1
//page 665
clear all;
clc ;
//given
Eg=[0 -1 -2 -3 -4];//V

Ep=75;//V
//drawing vertical line at Ep=75 V in Vacuum triode plate characteristics we get values of Ip for Eg values as
Ip=[20 10 2 1 0];

plot(Eg,Ip,'-.*');
xtitle('vacuum triode transconutance characteristics')
xlabel('Eg in V');
ylabel('Ip in mA');


Ip=10;//mA
//drawing horizontal line at Ip=10 mA in Vacuum triode plate characteristics we get values of Ep for Eg as 
Ep=[45 75 105 132 160];
figure,plot(Ep,Eg,'-.*');
xtitle('vacuum triode constant-current characteristics')
xlabel('Ep in V');
ylabel('Eg in V');

