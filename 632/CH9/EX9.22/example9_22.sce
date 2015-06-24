//clc()
xf = 500 * 10^-6;
xp = 50 * 10^-6;
xb = 1600 * 10^-6;
//F - Feed water rate, B - blow down rate, S - high pressure steam, P - process stream rate
// total balance, F = P + B
// Solid balance, F * xf + P * xp = B * xb
//eliminating P, we get, F * xf + (F - B)*xp = B * xb
//let F/B be X
X = (xb + xp)/(xf + xp);
disp(X,"the ratio of feed water to the blowdown water = ")