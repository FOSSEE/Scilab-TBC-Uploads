accidents= [4 0 6 5 2 1 2 0 4 3 ];
lambda= mean(accidents)
disp(cdfpoi("PQ", 2, lambda))