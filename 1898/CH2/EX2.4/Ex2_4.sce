clear all; clc;

disp("Scilab Code Ex 2.4 : ")

//Given:
ab = 150; //mm
bc = 150; //mm
disp_cd= 2; //mm
ab_half = ab/2;
addash_half = (bc+disp_cd)/2 ;

//Calculations:

//Part(a)

ac = sqrt((ab)^2 + (bc)^2);  //Pythagoras theorem in mm
ac_m = ac/1000; //in m
acdash = sqrt((ab)^2 + (bc+disp_cd)^2);  //Pythagoras theorem in mm
acdash_m = acdash/1000; //in m

avg_strain_ac = (acdash_m - ac_m)/ac_m; //Normal strain formula

//Part(b)

theta_dash = 2* atan((addash_half)/(bc/2)); //theta found in radians
gamma_xy = (%pi / 2)- theta_dash; //shear strain formula

//Display:


printf("\n\nThe average normal strain along the diagonal AC is   =%10.5f mm/mm",avg_strain_ac);
printf("\nThe shear strain at E relative to the x,y axes       = %10.5f rad",gamma_xy);

//----------------------------------------------------------------END---------------------------------------------------------------------------------------------


