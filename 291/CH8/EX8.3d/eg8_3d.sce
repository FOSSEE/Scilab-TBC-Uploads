alpha = 0.025;
betaa = 0.25;

u1 = 9.2;
uo = 8;
var =4;
zalpha = cdfnor("X", 0, 1, 1-alpha, alpha);
zbeta = cdfnor("X", 0, 1, 1-betaa, betaa);
//disp(zalpha);
n = ((zalpha + zbeta)/(u1-uo))^2 *var;
disp(ceil(n), "Required number of samples is")
statistic = sqrt(ceil(n)/var)*(u1 - uo);
//disp(statistic);
lim1 = -1*statistic + zalpha;
lim2 = -1*statistic - zalpha;
//disp(lim1)
//disp(lim2)
prob = cdfnor("PQ", lim1 , 0,1 ) - cdfnor("PQ", lim2 , 0,1 );
disp(1-prob, "Thus, if the message is sent the reqd number of times is , then the probability that the null hypothesis will be rejected is")