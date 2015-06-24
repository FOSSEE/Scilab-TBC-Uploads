function result= binomial(n, k, p)
    result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction

children = 4;
reqdblueyes = 2;
probblueeyes = 0.5*0.5;
prob = binomial(children, reqdblueyes, probblueeyes);
disp(prob, "The reqd probability is")