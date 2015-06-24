sum_lives = 1740;
num = 10;
alpha = (1-0.95)/2;
chi1= cdfchi("X", (2*num), alpha, 1-alpha);
chi2 = cdfchi("X", (2*num), 1-alpha, alpha);
//disp(chi2)
lowerlim = 2*sum_lives/chi2;
upperlim = 2*sum_lives/chi1;
disp(upperlim, "to ",lowerlim,"The 95% confidence interval is "   )

//The confidence interval is from 101.847 to 360.211 whereas my solution in Scilab is 101.84489 to 362.8485 because of the difference in the value of chi-square(0.975, 20). The textbook says the value is 9.661 whereas scilab calculates its value as 9.59