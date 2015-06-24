//Exa 4
clc;
clear;
close;
//given data :
inINV=100000;//initial investment in Rs. and equal for all projects
//Project A : cash in flows of 1st,2nd,3rd,4th and 5th years
CIF1=30000;//in Rs.
CIF2=30000;//in Rs.
CIF3=30000;//in Rs.
CIF4=30000;//in Rs.
CIF5=30000;//in Rs.
//Project A : Cummulative cash in flows of 1st,2nd,3rd,4th and 5th years
CumCIF1=30000;//in Rs.
CumCIF2=60000;//in Rs.
CumCIF3=90000;//in Rs.
CumCIF4=120000;//in Rs.
CumCIF5=150000;//in Rs.
disp("In the table it can be seen that in 3 years 90000 Rs has been recovered, Rs. 10000 is left out of initial investment.")
disp("Payback period is between 3 and 4 years.")
E=3;
B=100000-90000;//remaining balance to be recovered
C=30000;//cash flow of last payback year
PaybackPeriod=E+B/C;
disp(PaybackPeriod,"Payback period of the project A(in years) is : ");


//Project B : cash in flows of 1st,2nd,3rd,4th and 5th years
CIF1=30000;//in Rs.
CIF2=40000;//in Rs.
CIF3=20000;//in Rs.
CIF4=10000;//in Rs.
CIF5=5000;//in Rs.
//Project B : Cummulative cash in flows of 1st,2nd,3rd,4th and 5th years
CumCIF1=30000;//in Rs.
CumCIF2=70000;//in Rs.
CumCIF3=90000;//in Rs.
CumCIF4=100000;//in Rs.
CumCIF5=105000;//in Rs.
disp("In the table it can be seen that in complete 4 years 100000 Rs has been recovered.")
disp(4,"Payback period of the project B(in years) is : ");


//Project C : cash in flows of 1st,2nd,3rd,4th and 5th years
CIF1=40000;//in Rs.
CIF2=20000;//in Rs.
CIF3=30000;//in Rs.
CIF4=40000;//in Rs.
CIF5=10000;//in Rs.
//Project C : Cummulative cash in flows of 1st,2nd,3rd,4th and 5th years
CumCIF1=40000;//in Rs.
CumCIF2=60000;//in Rs.
CumCIF3=90000;//in Rs.
CumCIF4=130000;//in Rs.
CumCIF5=140000;//in Rs.
disp("In the table it can be seen that in 3 years 90000 Rs has been recovered, Rs. 10000 is left out of initial investment.")
disp("Payback period is between 3 and 4 years.")
E=3;
B=100000-90000;//remaining balance to be recovered
C=40000;//cash flow of last payback year
PaybackPeriod=E+B/C;
disp(PaybackPeriod,"Payback period of the project C(in years) is : ");
//final conclusion
disp("As all the projects have payback period of less than 5 years and 5 years is the standard payback period, all the three projects are acceptable.")