// Exa 1.31

clc;
clear;

// Given

// Various Current Measurements

I1 = 41.7; // First reading in A
I2 = 42; // second reading in A
I3 = 41.8; // third reading in A
I4 = 42; // fourth reading in A
I5 = 42.1; // Fifth reading in A
I6 = 41.9; // sixth reading in A
I7 = 42; // seventh reading in A
I8 = 41.9; // eight reading in A
I9 = 42.5; // nineth reading in A
I10 = 41.8; // tenth reading in A
n=10; // Total no of observations
I = [41.7;42;41.8;42;42.1;41.9;42;41.9;42.5;41.8];

// Solution

AM = (I1+I2+I3+I4+I5+I6+I7+I8+I9+I10)/n;
printf('The arithmatic mean = %.4f A \n',AM);

// Deviation for each reading will be -
d1 = I1 - AM; // deviation for 1st reading
d2 = I2 - AM; // deviation for 2nd reading
d3 = I3 - AM; // deviation for 3rd reading
d4 = I4 - AM; // deviation for 4th reading
d5 = I5 - AM; // deviation for 5th reading
d6 = I6 - AM; // deviation for 6th reading
d7 = I7 - AM; // deviation for 7th reading
d8 = I8 - AM; // deviation for 8th reading
d9 = I9 - AM; // deviation for 9th reading
d10 = I10 - AM; // deviation for 10th reading

SD = sqrt((d1^2+d2^2+d3^2+d4^2+d5^2+d6^2+d7^2+d8^2+d9^2+d10^2)/(n-1));
printf(' The standard deviation = %.3f A \n',SD);

Y = 0.6745*SD;
printf(' Probable error of one reading = %.3f A \n',Y);
Vm = Y/sqrt(n-1);
printf(' Probable error of mean = %.3f A \n',Vm);


printf(' Range = %.1f A \n',max(I)-min(I));

// The answers vary due to round off error
