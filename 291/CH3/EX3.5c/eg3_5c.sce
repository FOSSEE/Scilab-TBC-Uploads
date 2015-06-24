men = 6;
women = 4;
disp(factorial(men+women), "No of different rankings possible is")
women_top4 = factorial(women)*factorial(men);
prob = women_top4/factorial(men+women);
disp(prob, "Probability that women receive the top 4 scores is")