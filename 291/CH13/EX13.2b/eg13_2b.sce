Xbar = [3.01 2.97 3.12 2.99 3.03 3.02 3.10 3.14 3.09 3.20];
S = [0.12 0.14 0.08 0.11 0.09 0.08 0.15 0.16 0.13 0.16];
c = [0.7978849 0.8862266 0.9213181 0.9399851 0.9515332 0.9593684 0.9650309 0.9693103 0.9726596];
n=4;
Xbarbar= mean(Xbar);
Sbar =mean(S);
lcl = Xbarbar - (3*Sbar/(sqrt(n)*c(n-1)));
ucl = Xbarbar + (3*Sbar/(sqrt(n)*c(n-1)));
//disp(lcl, "LCL is")
//disp(ucl, "UCL is")
u = Xbarbar;
sigma= Sbar/c(n-1);
//disp(u);
//disp(sigma);
//disp(Sbar, c(4));
prob = cdfnor("PQ", 3.1, u, sigma) - cdfnor("PQ", 2.9, u, sigma);
disp(prob*100, "Percentage of the items that will meet the specifications is")