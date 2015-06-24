X = [54 63 58 72 49 92 70 73 69 104 48 66 80 64 77];
num = 15;
meanX= mean(X);
X2 = X^2;
s2= (sum(X2)- (num*(meanX^2)))/(num-1);
s= sqrt(s2);
tval =  cdft("T", num-1,  0.975, 0.025);
//disp(tval)
upperlim = meanX + (tval*s)/sqrt(num);
lowerlim = meanX - (tval*s)/sqrt(num);
disp(upperlim, "to ",lowerlim,"The 95% confidence interval is ",   )
alpha = 0.05;
tval = cdft("T", num-1, 1-alpha, alpha);
lim = meanX + (tval*s)/sqrt(num);
disp(lim, "The 95% lower confidence interval is from minus infinity to ")