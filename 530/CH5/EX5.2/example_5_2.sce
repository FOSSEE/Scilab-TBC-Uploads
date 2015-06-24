clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.2
// Page 213
printf("Example 5.2,Page 213 \n\n")

// From eqn 5.2.12 and 4.4.20
// Let r = Lth/Le
// r = 0.04305*Pr/0.0575;

function[T]=r(Pr)
    T = 0.04305*Pr/0.0575
endfunction 

// For Pr = 0.01
r1 = r(0.01);
// For Pr = 0.1
r2 = r(1);
// For Pr = 100
r3 = r(100);

printf("Lth/Le at Pr = 0.01 is %f \n",r1);
printf("Lth/Le at Pr = 1 is %f \n",r2);
printf("Lth/Le at Pr = 100 is %f",r3);