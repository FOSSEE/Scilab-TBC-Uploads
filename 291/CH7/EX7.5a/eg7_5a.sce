phat = 0.8;
zalpha = 1.96;

samplesize = 100;
lowerlim = phat - (zalpha*sqrt(phat*(1-phat)/samplesize));
upperlim = phat + (zalpha*sqrt(phat*(1-phat)/samplesize));
disp(upperlim, "to ",lowerlim,"The 95% confidence interval is "   )