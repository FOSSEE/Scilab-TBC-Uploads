samplesize = 500;
p =0.04;
defective=16;
prob1 =  cdfbin("PQ", defective, samplesize, p, 1-p)
prob2 = 1- cdfbin("PQ", defective-1, samplesize, p, 1-p);
pvalue = 2*min([prob1 prob2]);
disp(pvalue, "The pvalue is")
