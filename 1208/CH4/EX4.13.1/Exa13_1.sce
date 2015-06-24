//Exa 13.1
clc;
clear;
close;
//given data :
//initial cash outflows
ICO=80000;//in Rs.
//cash in flows of 10 years
CIF1=14000;//in Rs.
CIF2=14000;//in Rs.
CIF3=14000;//in Rs.
CIF4=14000;//in Rs.
CIF5=14000;//in Rs.
CIF6=16000;//in Rs.
CIF7=20000;//in Rs.
CIF8=30000;//in Rs.
CIF9=20000;//in Rs.
CIF10=8000;//in Rs.
//Cummulative cash in flows of 10 years
CumCIF1=14000;//in Rs.
CumCIF2=28000;//in Rs.
CumCIF3=42000;//in Rs.
CumCIF4=560000;//in Rs.
CumCIF5=70000;//in Rs.
CumCIF6=86000;//in Rs.
CumCIF7=106000;//in Rs.
CumCIF8=136000;//in Rs.
CumCIF9=156000;//in Rs.
CumCIF10=164000;//in Rs.
disp("In the table it can be seen that in 5 years 70000 Rs has been recovered, Rs. 10000 is left out of initial investment.")
disp("Payback period is between 5 and 6 years.")
E=5;
B=80000-70000;//remaining balance to be recovered
C=16000;//cash flow of last payback year
PaybackPeriod=E+B/C;
disp(PaybackPeriod,"Payback period of the project(in years) is : ");


