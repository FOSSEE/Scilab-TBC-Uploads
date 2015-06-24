//clc()
F = 100;//kg/h
xf = 0.2;
xp = 0.93;
xr = 0.5/1.5;
xx = 0.65;
//R - recycle stream, P - Product stream , W - water separeted and removed
//component A balance, F * xf = P * xp, that is,
P = F * xf / xp;
//Total balance, F = P + W,therefore
W = F - P;
//x be the flow rate of strea entering the filter 
//total balance, x = P + R                             (1)
//component A balance , 0.65 * x = 0.5*R/1.5 + 0.93P   (2)
//Solving 1 and 2, we get,
R = (xx * P - xp * P)/(xr - xx);
disp("kg/h",R,"Flow rate of the recycle stream = ")