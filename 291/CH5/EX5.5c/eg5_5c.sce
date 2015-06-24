r =3;
avg = 6;
std= 1;
var = std^2;
expecV2 = var + (avg^2);
expecW = 3*expecV2;
disp(expecW, "Expectation of W is ")
limw=120;
limV = sqrt(limw/r);
disp(1-cdfnor("PQ", limV, avg, std), "P{W>120} is")