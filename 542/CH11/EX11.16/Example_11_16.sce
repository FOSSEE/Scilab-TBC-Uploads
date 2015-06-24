//Example 11.16

clear;
clc;

printf("\tExample 11.16\n");

//Mole fractions
xf=[0.40 0.35 0.25];
xd=[0.534 0.453 0.013];
xw=[0 0.04 0.96];

//Amount of feed, product, bottom in kmol
F=[40 35 25];
D=[40 34 1];
W=[0 1 24];

//roots of equation
theta=[1.15 1.17];

//relative volatility
alpha=[2.7 2.22 1];

//Underwoods 1st equation for q=1
sums=[0 0];
for i=1:2
    for j=1:3
        sums(i)=sums(i)+(alpha(j)*xf(j)/(alpha(j)-theta(i)));
    end
end
printf("\nFrom Underwoods 1st eq\n");
printf("The value of 1-q at theta = 1.15 and 1.17 are");
disp(sums);

//Underwoods 2nd equation for minimum reflux ratio
sum2=0;
for l=1:3
    sum2=sum2+(alpha(l)*xd(l)/(alpha(l)-theta(2)));
end

Rm=sum2-1;
printf("\nMinimum Reflux ratio is %.3f\n",Rm);

//End