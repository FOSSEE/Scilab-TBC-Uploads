samplesize = 300;
p =0.02;
defective=9;
compare = 10;
npo = samplesize*p;
sd = sqrt(npo*(1-p));
tol = 0.5;
pvalue = 1- cdfnor("PQ", compare-tol, npo,sd );
disp(pvalue, "The pvalue is")