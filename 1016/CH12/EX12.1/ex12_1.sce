clc;clear;
//Example 12.1

//given data
r=0.5;//ratio of mass of Pb206 and mass of U238
t=4.5*10^9;//half life in years

//calculation
T=(log(1+r))*(t/0.693);
disp(T,'age in years')