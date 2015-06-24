function result= bino(n, k, p)
    result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction
avg = 5;
i=3;
prob = cdfpoi("PQ", 2, avg);
disp(prob, "Proportion of days that have less than 3 claims is")
probX4 = cdfpoi("PQ",i+1, avg) - cdfpoi("PQ", i, avg);

reqdprob = bino(5,3 , probX4);
disp(reqdprob, "Probability that 3 of the next 5 days will have exactly 4 claims is ")