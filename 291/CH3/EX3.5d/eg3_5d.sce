men = 6;
women = 9;
reqd_size =5;
total =factorial(men+women)/(factorial(reqd_size)*factorial(men+women-reqd_size));
given_committee = factorial(men)*factorial(women)/(factorial(3)*factorial(2)*factorial(men-3)*factorial(women-2));
prob = given_committee/total;
disp(prob, "Probability that the committee consists of 3 men and 2 women is")