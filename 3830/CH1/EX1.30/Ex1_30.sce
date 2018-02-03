// Exa 1.30

clc;
clear;

// Given

// Various Inductance Measurements
L1 = 1.003; // First reading in mH
L2 = 0.998; // second reading in mH
L3 = 1.001; // third reading in mH
L4 = 0.991; // fourth reading in mH
L5 = 1.009; // Fifth reading in mH
L6 = 0.996; // sixth reading in mH
L7 = 1.005; // seventh reading in mH
L8 = 0.997; // eight reading in mH
L9 = 1.008; // nineth reading in mH
L10 = 0.994; // tenth reading in mH
n = 10; // total no of readings

// Solution

AM = (L1+L2+L3+L4+L5+L6+L7+L8+L9+L10)/n;
printf('The arithmatic mean = %.4f mH \n',AM);

// Deviation for each reading will be -
d1 = L1 - AM; // deviation for 1st reading
d2 = L2 - AM; // deviation for 2nd reading
d3 = L3 - AM; // deviation for 3rd reading
d4 = L4 - AM; // deviation for 4th reading
d5 = L5 - AM; // deviation for 5th reading
d6 = L6 - AM; // deviation for 6th reading
d7 = L7 - AM; // deviation for 7th reading
d8 = L8 - AM; // deviation for 8th reading
d9 = L9 - AM; // deviation for 9th reading
d10 = L10 - AM; // deviation for 10th reading

Avg_deviation = (d1+d2+d3+d4+d5+d6+d7+d8+d9+d10)/n;
printf(' The average deviation = %d mH \n',Avg_deviation);

SD = sqrt((d1^2+d2^2+d3^2+d4^2+d5^2+d6^2+d7^2+d8^2+d9^2+d10^2)/(n-1));
printf(' The standard deviation = %.3f mH \n',SD);

//The answer provided in the textbook is wrong
