// Energy of a signal
// 3.1

u = [4 5 6];
Eu = norm(u)^2;
ruu = xcorr(u);
Lu = length(ruu);
Eu = ruu(ceil(Lu/2));
