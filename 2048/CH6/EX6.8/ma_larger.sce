// Estimation with a larger order model results in large uncertainty, as discussed in Example 6.15 on page 185.
// 6.8

m = armac(1,0,[1 -0.9 0.2],1,1,1);
xi = 0.1*rand(1,10000);
v = arsimul(m,xi);
M1 = armax1(0,0,2,v,zeros(1,10000))
disp(M1)
M2 = armax1(0,0,3,v,zeros(1,10000))
disp(M2)
