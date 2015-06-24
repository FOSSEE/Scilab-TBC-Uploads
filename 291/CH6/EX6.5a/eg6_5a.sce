n= 15;
sigmasquare= 9;
lim =12;
actual_lim = (n-1)*lim/sigmasquare;
prob =  1- cdfchi("PQ", actual_lim, (n-1))
disp(prob)
