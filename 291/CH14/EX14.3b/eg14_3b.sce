t = 1800;
theta = 150;
r =20;
pvalue =  cdfchi("PQ",2*t/theta, 2*r );
disp(pvalue, "P-value is ")