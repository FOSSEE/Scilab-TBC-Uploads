favour = 0.45;
samplesize = 200;
expec= favour*samplesize;
sd = sqrt(samplesize*favour*(1-favour));
disp(expec, "The expected value is ")
disp(sd, "The standard deviation is ")

function result= bino(n, k, p)
    result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction

//newsum = 0;
//for i=1:10
 //   newsum = newsum + bino(200,i, favour)
//end
//prob = 1-newsum;*/

lim = 101;
tolerance = 0.5;
lim= lim - tolerance;
prob = 1- cdfnor("PQ", lim, expec, sd)

disp(prob, "Probability that more than half the members of the sample favour the candidate")