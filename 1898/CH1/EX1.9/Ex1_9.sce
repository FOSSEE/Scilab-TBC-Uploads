clear all; clc;

disp("Scilab Code Ex 1.9 : ")

//Given :
f = 3000; //N Force acting at distance x from AB.
l_ac = 200; //Length of AC in mm.
a_ab = 400; //Cross sectional area of AB in mm^2.
a_c = 650; // area of C in mm^2.


f_ans = zeros(3)

k = [1 1 0;0 l_ac -f; 1.625 -1 0]
l = [f ; 0 ; 0 ]
f_ans = k\l;

f_ab = f_ans(1)
f_c = f_ans(2)
x = f_ans(3)

//Display:

printf('\n\nThe Net force on AB       = %.2f N',ceil(f_ab));
printf('\nNet force on C            = %.2f N',f_c);
printf('\nDistance of force from AB = %.2f mm',ceil(x));


//------------------------------------------------------------------------------END------------------------------------------------------

