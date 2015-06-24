meanX = 0.786;
s= 0.03;
num = 100;
alpha = 0.05;
tval = cdft("T", num-1, 1-alpha, alpha);
upperlim = meanX + (tval*s)/sqrt(num);
lowerlim = meanX - (tval*s)/sqrt(num);
disp(upperlim, "to ",lowerlim,"The 95% confidence interval is ",   )