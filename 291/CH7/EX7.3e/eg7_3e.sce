X = [5 8.5 12 15 7 9 7.5 6.5 10.5];
num = 9;
meanX= mean(X);
X2 = X^2;
s2= (sum(X2)- (num*(meanX^2)))/(num-1);
s= sqrt(s2);
tval =  cdft("T", num-1,  0.975, 0.025);
//disp(tval)
upperlim = meanX + (tval*s)/sqrt(num);
lowerlim = meanX - (tval*s)/sqrt(num);
disp(upperlim, "to ",lowerlim,"The 95% confidence interval is ",   )