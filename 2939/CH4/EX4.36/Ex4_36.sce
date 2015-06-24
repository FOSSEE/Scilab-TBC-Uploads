
//Ex4_36
clc;
// Given:
tPo=138;// days
n=24.86;// days
// Solution:
kPo = 0.693/tPo;
// using simplification logx=2(x-1)/(x+1)
kBi=((2 * 2.303)-(n*kPo))/n;
tBi=0.693/kBi;

printf("The half life of Bi is %f days",tBi)
