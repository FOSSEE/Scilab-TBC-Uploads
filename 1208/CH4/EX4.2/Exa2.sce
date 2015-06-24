//Exa 2
clc;
clear;
close;
//given data :
//cash in flows of 1st,2nd,3rd and 4th years
CIF1=20000;//in Rs.
CIF2=30000;//in Rs.
CIF3=40000;//in Rs.
CIF4=50000;//in Rs.
//Cummulative cash in flows of 1st,2nd,3rd and 4th years
CumCIF1=20000;//in Rs.
CumCIF2=50000;//in Rs.
CumCIF3=90000;//in Rs.
CumCIF4=140000;//in Rs.
disp("In the table it can be seen that in 3 years 90000 Rs has been recovered, Rs. 10000 is left out of initial investment.")
disp("Payback period is between 3 and 4 years.")
E=3;
B=100000-90000;//remaining balance to be recovered
C=50000;//cash flow of last year
PaybackPeriod=E+B/C;
disp(PaybackPeriod,"Payback period of the project(in years) is : ");
//Note : ans in the book is not accurate, given 3 years and two month. but it is 3.2 years and can say 3 years 2 month plus 12 days.