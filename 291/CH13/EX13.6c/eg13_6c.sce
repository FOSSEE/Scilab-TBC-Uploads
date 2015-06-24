X = [9.617728 10.25437 9.867195 10.79338 10.60699 10.48396 13.33961 9.462969 10.14556 11.66342  11.55484 11.26203 12.31473 9.220009 11.25206 10.48662 9.025091 9.693386 11.45989 12.44213 11.18981 11.56674 9.869849 12.11311 11.48656];
t = 1:1:26;
alpha = 2/9;
val = 9.915051 - (alpha*9.617728);
val = val/(1-alpha);
disp(val, "val is");
u = 10;
n = 5;
sigma = 2;

W = zeros(26);
W(1) = 10.;
for i =2:26
    W(i) = (alpha*X(i-1)) + ((1-alpha)*W(i-1));
end
disp(W , "The values of W are");
val = 3*sigma*sqrt(alpha/(n*(2-alpha)));
lcl = u- val;
ucl = u+ val;
disp(lcl, "LCL is");
disp(ucl, "UCL is");
plot2d(t,W, -2);
xlabel("t");
ylabel("W");
nlcl = ones(1, 26);
nlcl= nlcl.* lcl;
plot2d(t,nlcl);
nucl = ones(1, 26);
nucl= nucl.* ucl;
plot2d(t,nucl);

//The asymptpotic lines for UCL and LCL have been plotted 