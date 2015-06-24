initialsample = 30;
acceptable= 26;
phat = acceptable/initialsample;
error = 0.05/2;
zalpha = 2.58;

samplesize = (error/zalpha)^2/(phat*(1-phat));
finalsize = ceil(1/samplesize);
acceptablenew= 1040 + acceptable;
phat = acceptablenew/finalsize;
lowerlim = phat - (zalpha*sqrt(phat*(1-phat)/finalsize));
upperlim = phat + (zalpha*sqrt(phat*(1-phat)/finalsize));
disp(upperlim, "to ",lowerlim,"The 99% confidence interval is "   )

