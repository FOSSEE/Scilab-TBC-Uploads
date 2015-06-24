num=10;
X= [0.123 0.133 0.124 0.126 0.120 0.130 0.125 0.128 0.124 0.126];
//disp(variance(X))
s2 = variance(X);
chi1 = cdfchi("X",num-1,0.95, 0.05  );
chi2 = cdfchi("X",num-1,0.05, 0.95  );
//disp(chi1, chi2)
lowerlim = (num-1)*s2/chi2;
upperlim = (num-1)*s2/chi1;
disp(sqrt(upperlim), "to ",sqrt(lowerlim),"The 90% confidence interval is "  )