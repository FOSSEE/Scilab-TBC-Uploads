T = 500;
alpha = 0.05;
r = 10;
val1 = cdfchi("X", 2*r, 1-alpha/2, alpha/2);
val2 = cdfchi("X", 2*r, alpha/2, 1- alpha/2);
int1= 2*T/val1;
int2= 2*T/val2;
disp("The 95% confidence interval is");
disp(int1);
disp(int2, "to");
 
 //The confidence interval is from 29.27 to 103.52 whereas my solution in Scilab is 29.265774 to 104.26683 because of the difference in the value of chi-square(0.975, 30). The textbook says the value is 9.66 whereas scilab calculates its value as 9.5907774 . 