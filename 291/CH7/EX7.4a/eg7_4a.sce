A=[36 44 41 53 38 36 34 54 52 37 51 44 35 44];
B=[52 64 38 68 66 52 60 44 48 46 70 62];
sigmaA= 40;
sigmaB= 100;
alpha = 1-0.95;
beta= alpha/2;
meanA = mean(A);
meanB= mean(B);
zbeta = cdfnor("X",0, 1, 1-beta, beta );

lowerlim= mean(A) - mean(B) - (zbeta*sqrt((sigmaA/length(A)) + (sigmaB/length(B)))) ;
upperlim= mean(A) - mean(B) + (zbeta*sqrt((sigmaA/length(A)) + (sigmaB/length(B)))) ;
disp(upperlim, "to ",lowerlim,"The 95% confidence interval is "   )

beta=alpha;
zbeta = cdfnor("X",0, 1, 1-beta, beta );

upperlim= mean(A) - mean(B) + (zbeta*sqrt((sigmaA/length(A)) + (sigmaB/length(B)))) ;
disp(upperlim, "A value that exceed the difference of the means with 95% confidence is"   )
