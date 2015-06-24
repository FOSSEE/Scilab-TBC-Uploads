clc;
//Example 9.3
//Page no 340



//solution

fm=49;
fs=51;
fb=2;

disp("The modulation index is determine from equation 9-17(refer pgno 340)");

h=(fs-fm)/2;

disp(h,"h = ");

disp("From Bessel table, the bandwidth can be determine as follows, ");

b=2*(3*h);

disp('hz',b*10^3,"B = ");

