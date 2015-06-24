clear;
clc;

// Illustration 7.1
// Page: 222

printf('Illustration 7.1 - Page: 222\n\n');

// Solution

// ****Data****//
Temp1 = 273+26.1;// [K]
P1 = 100;// [mm Hg]
Temp2 = 273+60.6;// [K]
P2 = 400;// [mm Hg]
P = 200;// [mm Hg]
//*****//

deff('[y] = f12(T)','y = ((1/Temp1)-(1/T))/((1/Temp1)-(1/Temp2))-((log(P1)-log(P))/(log(P1)-log(P2)))');
T = fsolve(37,f12);// [K]
printf("At %f 0C, the vapour pressure of benzene is 200 mm Hg\n",T-273);