avg = 0;
var = 4;
num = 9;
X =[5 8.5 12 15 7 9 7.5 6.5 10.5];
samplemean= mean(X);
lowerlim = samplemean - (1.645*sqrt(var/num))
upperlim = samplemean + (1.645*sqrt(var/num))

disp(" to infinity", lowerlim,"The 95% upper confidence interval is " )
disp(upperlim,"The 95% upper confidence interval is minus infinity to " )