clc;
s = %s;
G = syslin('c',((s-3)*(s-5))/((s+1)*(s+2)));
disp(G);
evans(G,100);xgrid();
printf("For all the points on the root locus K.G(s).H(s) = -1");
K = -G^(-1);
disp(K);
Kdot = derivat(K);disp(Kdot,"dK/ds =");
root = roots(numer(Kdot));
disp(root(2),"Break away point at ",root(1),"Break in point at");

