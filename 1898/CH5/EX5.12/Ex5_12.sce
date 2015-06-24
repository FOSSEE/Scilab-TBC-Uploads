clear all; clc;

disp("Scilab Code Ex 5.12 : ")

//Given:
 T = 250; //Nm
 G_st = 80; //GPa
 G_br = 36; //GPa
 ri = 10; //mm
 ro = 20; //mm
 l_ab = 1.2; //m
 
 //Equilibrium:
 // -Tst-Tbr+250Nm = 0
 coeff1_st = -1;
 coeff1_br = -1;
 b1 = -250;
 
 //Compatibility:
 //phi = TL/JG
 
 J1 = (%pi/2)*(ro^4 - ri^4);
 J2 = (%pi/2)*(ri^4);
 coeff2_st = 1/(J1*G_st*10^3);
 coeff2_br = -1/(J2*G_br*10^3);
b2 = 0;

//Solving the above two equations simultaneously using matrices:
A = [coeff1_st coeff1_br;coeff2_st coeff2_br ];
b = [b1 ; b2];
T = A\b;

T_st = T(1);
T_br = T(2);

shear_br_max = (T_br*10^3*ri)/(J2); //tou = (Tr)/J
shear_st_min = (T_st*10^3*ri)/(J1); //tou = (Tr)/J
shear_st_max = (T_st*10^3*ro)/(J1); //tou = (Tr)/J

shear_strain = shear_br_max / G_br;
shear_strain = shear_strain;

//Display:


printf('\n\nThe Torque acting on Steel                       = %1.2f Nm',T_st);
printf('\nThe Torque acting on Brass                       = %1.2f Nm',T_br);
printf('\nThe maximum shear stress experienced by Steel    = %1.2f MPa',shear_st_max);
printf('\nThe minimum shear stress experienced by Steel    = %1.2f MPa',shear_st_min);
printf('\nThe maximum shear stress experienced by Brass    = %1.2f MPa',shear_br_max);
printf('\nThe shear strain at the interface                = %1.5f *10^-3 rad',shear_strain);


//--------------------------------------------------------END-------------------------------------------------------------------------------------




