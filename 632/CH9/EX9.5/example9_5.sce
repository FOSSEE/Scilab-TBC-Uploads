//clc()
//let, W - waste acid, S - Sulfuric acid, N - nitric acid, M - mixed acid
xsh2so4 = 0.95;
xsh2o = 0.5;
xwh2so4 = 0.3;
xwhno3 = 0.36;
xwh2o = 0.34;
xmh2so4 = 0.4;
xmhno3 = 0.45;
xmh2o = 0.15;
xnhno3 = 0.8;
xnh2o = 0.2;
M = 1000;//kg
// total material balance, W + S + N = 1000;
//H2SO4 balance, xwh2so4 * W + xsh2so4 * S = xmh2so4*M
//HNO3 balance, xwhno3 * W + xnhno3 * N = xmhno3*M
//H2O balance, xwh2o*W+xnh2o*N + xsh2o*S = xmh2o*M
//solving the above equations simultaneously, we get,
W = 70.22;//kg
S = 398.88;//kg
N = 530.9;//kg
disp("kg",W,"Waste acid = ")
disp("kg",S,"Concentrated H2SO4 = ")
disp("kg",N,"Concentrated HNO3 = ")
