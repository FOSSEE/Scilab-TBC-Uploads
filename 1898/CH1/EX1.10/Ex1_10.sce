clear all; clc;

disp("Scilab Code Ex 1.10 : ")

//Given:
 af = 800; //N Axial force along centroidal axis
t = 0.040; //m thickness of square cross section
ang_b = 30 *(%pi/180) ;
ang_b_comp = 60 *(%pi/180);
a = t^2; //m^2 Area of cross section
a_new = ((t*1000)^2)/(sin(ang_b_comp)); // mm^2 Area of section at b-b

//Part(a)

//Internal Loading: The bar is sectioned, Fig 1-24b, and the internal resultant loading consists of only axial force.

// Average Stress: 
avg_stress = af/(a* 1000);

//Shear Force at the section is zero.
//The average normal stress distribution over the cross section is shown in Fig 1-24c.


//Part(b)


//solve the two equations for two unknowns:

N = af * cos(ang_b); 
V = af * sin(ang_b);
avg_normal_stress = (N*1000)/ a_new; // kPa
avg_shear_stress = (V*1000)/a_new; //kPa

//Display

printf('\n\nThe average stress for section a-a          = %.2f kPa',avg_stress);
printf('\nThe Normal Force for section b-b            = %.2f N',N);
printf('\nThe Shear Force for section b-b             = %.2f N',V);
printf('\nThe Average Normal Stress for section b-b   = %.2f kPa',avg_normal_stress);
printf('\nThe Average Shear Stress for section b-b    = %.2f kPa',ceil(avg_shear_stress));

//--------------------------------------------------------------------------END--------------------------------------------------------------------------



