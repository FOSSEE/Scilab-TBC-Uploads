prob = 0.95;
lim = 0.5;
X = cdfnor("X", 0,1, 0.975, 0.025 )
disp(ceil((4*X)^2), "Observations are necessary (atleast)")