clear;
clc;
h = 120;// feet
d = 5;// feet
h1 = 49;// feet
p = 42;// lb. per square foot
c = 0.6;
//p = k*sqrt(x)
k = p/sqrt(h1);
M = integrate('18*x^(3/2)','x',0,120);
printf('Bending moment at the foot of the chimney is, M = %d lb-ft',M);
//there is an error in the answer given in text book
