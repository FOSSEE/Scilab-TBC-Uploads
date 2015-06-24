////////////////////////////////investigate the if then else construct



I=5

//KVL
R=(-12.5+15)/I-0.02-0.035
disp(R)

P=poly([-25,12.5,0.035],"I","coeff")
Z=roots(P)
Ib=Z(2)
disp(Ib)

I=(13-12.5)/0.035
R=(15-13)/I-0.02
disp(R)
