//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.9
//evaluation of a integral

//given data
//function of x=(2*x^2)+(3*x)+5)
//limit=3 to 6

//calculation
y=integrate('((2*x^2)+(3*x)+5)','x',3,6)

disp(y,'value of the given integral is')
