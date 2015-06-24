clear ;
clc;
// Example 3.4
printf('Example 3.4\n\n');
printf('Page No. 61\n\n');

// given
P = 100000;/// Principal Amount of boiler plant in Pound
n = 10;// service life in years
S = 0;//Zero Salvage value
nT = (n*(n+1)/2);//sum of years
for i = 0:9
    d_(i+1) = ((P-S)/nT)*(n-i);
end
printf('The Annual depreciation for first year is %.0f Pound\n',d_(1))
printf('The Annual depreciation for second year is %.0f Pound\n\n',d_(2))
printf('The Annual depreciation for third year is %.0f Pound\n',d_(3))
printf('The Annual depreciation for ten year is %.0f Pound\n',d_(10))
// Deviation in answer due to some .approximation of values in the book
