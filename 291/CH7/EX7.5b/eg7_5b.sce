phat = 0.52;
error = 0.04;
zalpha = 1.96;
//lowerlim = phat - (zalpha*sqrt(phat*(1-phat)/samplesize));
//upperlim = phat + (zalpha*sqrt(phat*(1-phat)/samplesize));
samplesize = (error/zalpha)^2/(phat*(1-phat));
disp(1/samplesize)