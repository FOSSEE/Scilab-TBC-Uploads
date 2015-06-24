var = 4;
num = 9;
X =[5 8.5 12 15 7 9 7.5 6.5 10.5];
samplemean= mean(X);
alpha= 0.005;
zalpha = cdfnor("X", 0, 1,1-alpha ,alpha);
//disp(zalpha)
lowerlim = samplemean - (zalpha*sqrt(var/num))
upperlim = samplemean + (zalpha*sqrt(var/num))
disp(upperlim, "to ",lowerlim,"The 95% confidence interval is ",   )

alpha= 0.01;
zalpha = cdfnor("X", 0, 1,1-alpha ,alpha);
lowerlim = samplemean - (zalpha*sqrt(var/num))
upperlim = samplemean + (zalpha*sqrt(var/num))
disp(" to infinity", lowerlim,"The 95% upper confidence interval is " )
disp(upperlim,"The 95% upper confidence interval is minus infinity to " )