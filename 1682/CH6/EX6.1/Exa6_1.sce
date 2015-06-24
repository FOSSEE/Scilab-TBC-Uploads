//Exa 6.1
clc;
clear;
close;
//GIVEN DATA :
disp("Average No. of Km run/year = 20000 Km");
disp("No. of Km/litre of petrol = 9 Km");
disp("Therefore,");
disp("Petrol consumption/year = 20000/9 = 2222.2 litre");
disp("Cost/litre of petrol for the 1st year = Rs. 21 ");
disp("Cost/litre of petrol for the 2nd year = Rs. 21 + Re. 1 = Rs. 22 ");
disp("Cost/litre of petrol for the 3rd year = Rs. 22 + Re. 1 = Rs. 23 ");
disp("Cost/litre of petrol for the 4th year = Rs. 23 + Re. 1 = Rs. 24 ");

disp("Fuel expenditure for 1st year = 2222.2 * 21 = Rs. 46666.20");
disp("Fuel expenditure for 2nd year = 2222.2 * 22 = Rs. 48888.40");
disp("Fuel expenditure for 3rd year = 2222.2 * 23 = Rs. 51110.60");
disp("Fuel expenditure for 4th year = 2222.2 * 24 = Rs. 53332.80");
disp("The annual equal increment of the above expendiyure is Rs. 2222.20(G)");

A1=46666.20;//in Rs.
G=2222.20;//in Rs.
i=18;//in % per annum
n=4;//in years
A=A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) ;
disp(A,"Annual equal amount spending for petrol in Rs. : ");
disp("This amoount is less than the annual rental value of Rs. 60000. Therefore, the company should continue to provide its own car to its executive. ");