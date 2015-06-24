clear all; clc;

disp("Scilab Code Ex 2.1 : ")

//Given:
e_z= 4;
ab = 0.200; //m


//Calculations:

//Part a)

z=integrate('1+(40*10^-3)*(sqrt(z))','z',0,ab); //Strain formula for short line segment = delta(sdash) =(1+e_z)delta(s) 
deltaB= z-ab;
deltaB_mm= deltaB*1000;

//Part b)

e_avg = deltaB/ab;//  Normal strain formula : e = (delta(sdash) -delta(s))/delta(s)

//Display:


printf("\n\nThe value of integration is               =%10.5f m",z);
printf("\nThe displacement at the end of the rod is =   %0.2f mm",deltaB_mm);
printf("\nThe average normal strain in the rod is   =%10.4f mm/mm",e_avg);

//-------------------------------------------------------------------------END----------------------------------------------------------------------------------

