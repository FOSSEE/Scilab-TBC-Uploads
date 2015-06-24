clc;clear;
//Example 4.14

//given data
m=90;

//from Tables 4–1 and 4–2
Ehb=275;//hamburger
Ef=250;//fries
Ec=87;//cola

//calculation

//part a
Ein=2*Ehb+Ef+Ec;
//The rate of energy output for a 68-kg man watching TV is to be 72 Calories/h
Eout=m*72/68;
t=Ein/Eout;
disp(t,'by watching TV in hours');

//part b
//The rate of energy output for a 68-kg man watching TV is to be 860 Calories/h
Eout=m*860/68;
t=Ein/Eout*60//converting in min
t=ceil(t);
disp(t,'by fast swimming in mins');

//for last question
disp('answers be for a 45-kg man energy takes twice as long in each case');
