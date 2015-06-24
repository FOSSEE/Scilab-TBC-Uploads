clear;
clc;
h = 100;// feet
d = 4;// feet
p = 50;// lb. per square foot
c = 2/3;
M = integrate('(100*x/3)*(10-(6*x/100))','x',0,100);
printf('Bending moment at the foot of the chimney is, M = %d lb-feet',M);
