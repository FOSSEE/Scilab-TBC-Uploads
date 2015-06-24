//clear//
clc
clear
exec("2.4data.sci");


VCSTR = FA0*X(7)*(1/-rAat);
VPFR = FA0*inttrap(X,p)
disp("VCSTR =")
disp(VCSTR)
disp("dm^3")
disp("VPFR =")
disp(VPFR)
disp ("dm^3")
