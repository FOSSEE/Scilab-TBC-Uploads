samplesize = 300;
p =0.02;
defective=9;
val = 1- cdfbin("PQ", defective, samplesize, p, 1-p);
disp(val, "P0.02{X>10} = ");
disp("Manufacturers claim cannot be rejected at the 5% level of significance")
