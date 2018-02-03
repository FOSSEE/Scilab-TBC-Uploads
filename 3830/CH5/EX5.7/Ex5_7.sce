// Exa 5.7

clc;
clear;

// Given

b2 =2.5 ; // Max no of divisions on y-axis
b1 = 1.25; // point of intersection on y-axis(div)

// Solution

printf(' Let theta be the phase angle of V2 w.r.t V1 where V1 and V2 are the voltages applied to x and y axis respectively \n');
// Sin theta = b1/b2;
Theta = asind(b1/b2);

printf('  Therefore, the phase angle of V2 w.r.t V1 = %d degrees \n. But another possible value is(360-theta) i.e. %d degrees \n',Theta,360-Theta);
