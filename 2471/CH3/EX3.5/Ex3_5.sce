clear ;
clc;
// Example 3.5
printf('Example 3.5\n\n');
printf('Page No. 62\n\n');

// given
P = 40000;/// Principal Amount of boiler plant in Pound
nT = 10;// service life in years
S = 4000;// Salvage value
n = 6;// years after which Asset value has to be calculated

//(a) Straight line method
d = ((P-S)/nT);// Depreciation
Aa = (d*(nT-n)) + S;
printf('The Asset value at the end of six years using Straight line method is %.0f Pound\n',Aa)

// (b) Declining balance technique
f = 1-(S/P)^(1/nT);// Fixed fraction of the residual asset
Ab = P*(1-f)^n;
printf('The Asset value at the end of six years using Declining balance technique is %.0f Pound\n\n',Ab)

// (c) Sum of the years digit
sum_nT = (nT*(nT+1)/2);//sum of  10 years
sum_n = 45;//sum after 6 years
dc = ((sum_n/sum_nT)*(P-S));// Depreciation after 6 years
Ac = P-dc;
printf('The Asset value at the end of six years using Sum of the years digit is %.0f Pound\n',Ac)// Deviation in answer due to direct substitution

//(d) Sinking Fund Method
r_i = 0.06;// Rate of interest
Ad = P-((P-S)*(((1+r_i)^n-1)/((1+r_i)^nT-1)));
printf('The Asset value at the end of six years using Sinking Fund Method is %.0f Pound\n',Ad)// Deviation in answer due to direct substitution
