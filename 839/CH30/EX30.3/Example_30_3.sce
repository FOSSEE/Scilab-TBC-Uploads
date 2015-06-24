//clear//
clear;
clc;

//Example 30.3
//Given
f = 0.30;
tc = 5*60; //[s]
n = 1/tc; //[s^-1]
cF = 14.7; //[lb/ft^3]
deltaP = 1414;
mFbymC = 2
//Solution
alpha0 = 2.9*10^10; //[ft/lb], From Example 30.2
s = 0.26;
mu = 6.72*10^-4; //[lb/ft-s]
rho = 62.3; //[lb/ft^3]
gc =32.17;
//Using Eq.(30.19)
c = cF/(1-(mFbymC-1)*(cF/rho)); //[lb/ft^3]
mcdot = 10/(60*7.48)*(1/(cF/168.8+1))*cF; //[lb/s]
//Solving Eq.(30.34)
AT = mcdot*(alpha0*mu/(2*c*1414^(1-s)*gc*f*n))^(0.5);
disp('ft^2',AT,'Filter Area(AT) =');
