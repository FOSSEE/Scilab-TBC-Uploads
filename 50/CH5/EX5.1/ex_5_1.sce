// example: 5.1
// linear and quadratic interpolation:

// f(x)=ln x;

xL=[2 2.2 2.6];
f=[.69315 .78846 .95551];

// 1) fp(2) with linear interpolation;

fp=linearinterpol(xL,f);
disp(fp);
