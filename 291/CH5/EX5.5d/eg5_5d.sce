meanX1  = 12.08;
meanX2= 12.08;
stX1= 3.1;
meanX = meanX1 + meanX2;
varX = 2*(3.1^2);
lim= 25;
disp(1-cdfnor("PQ", lim, meanX, sqrt(varX)), "Probability that the total precipitation during the next 2 years will exceed 25 inches")

meanXnew= meanX1 - meanX2;
new_lim= 3;
disp(1- cdfnor("PQ", new_lim, meanXnew, sqrt(varX)), "Probability that precipitation in the next year will exceed that in the following year by more than 3 inches")