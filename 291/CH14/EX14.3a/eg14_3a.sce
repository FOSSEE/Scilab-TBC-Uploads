total =50;
failure = 15;
alpha = 0.05;
t =525;
val1 = cdfchi("X", 2*failure, alpha/2 , 1-(alpha/2));
val2 = cdfchi("X", 2*failure, 1-alpha/2 , (alpha/2));

int1 = 2*t/val1;
int2 = 2*t/val2;
disp("The 95% confidence interval is");
disp(int2);
disp(int1, "to");

//The confidence interval is from 22.35 to 62.17 whereas my solution in Scilab is 22.35 to 62.53 because of the difference in the value of chi-square(0.975, 30). The textbook says the value is 16.89 whereas scilab calculates its value as 16.79
