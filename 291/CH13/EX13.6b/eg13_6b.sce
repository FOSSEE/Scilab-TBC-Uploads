X = [48 52 70 62 57 81 56 59 77 82 78 80 74 82 68 84];
u = 62;
n = 4;
sigma = 24;
alpha = 0.25;
W = zeros(17);
W(1) = 60;
for i =2:17
    W(i) = (0.25*X(i-1)) + (0.75*W(i-1));
end
disp(W , "The values of W are")
val = 3*sigma*sqrt(alpha/(n*(2-alpha)));
lcl = u- val;
ucl = u+ val;
disp(lcl, "LCL is");
disp(ucl, "UCL is");