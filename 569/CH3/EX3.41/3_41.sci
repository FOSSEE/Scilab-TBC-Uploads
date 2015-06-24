//to calculate uncertainity in power

clc;
E=100;
dE=.01;
I=10;
dI=0.01;
R=10;
dR=.01;
dP=sqrt(4*dE^2+dR^2)*100;    //P=E^2/R
disp(dP,'%age uncertainity in power measurement');

dP=sqrt(dE^2+dI^2)*100;    //P=E*I
disp(dP,'%age uncertainity in power measurement');
