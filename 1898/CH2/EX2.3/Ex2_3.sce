clear all; clc;

disp("Scilab Code Ex 2.3 : ")

//Given:

ab= 250; //mm
bbdash_x = 3; //mm
bbdash_y = 2; //mm
ac = 300; //mm

//calculations:

//Part(a)
abdash = sqrt((ab - bbdash_y)^2 + (bbdash_x)^2);  //Pythagoras theorem
avg_normal_strain = (abdash-ab)/ab;

//Part(b)
gamma_xy = atan(bbdash_x/(ab - bbdash_y)); //shear strain formula

//Display:

printf("\n\nThe average normal strain along AB is    =%10.5f mm/mm",avg_normal_strain);
printf("\nThe average shear strain                 = %10.5f rad",gamma_xy);

//--------------------------------------------------------------------END-----------------------------------------------






