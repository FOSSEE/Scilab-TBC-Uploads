//to calculate uncertainity in measurement

clc;
l=150;
dl=0.01;
b=50;
wA=l*dl;
disp('when no uncertainity in measurement of length');
disp(wA,'uncertainity in measurement of area(m*m)');

disp('when no certainity in measurement of length');
wA=1.5*1.5;
wB=0.01;
wL=sqrt((wA^2-(l*wB)^2)/b^2);
disp(wL,'uncertainity in measurement of length(m)');