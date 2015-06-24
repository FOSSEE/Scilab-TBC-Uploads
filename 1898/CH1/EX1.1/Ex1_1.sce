clear all; clc;

disp("Scilab Code Ex 1.1 :")

w_varying = 270;
l_crossection = 9;
l_cb = 6;
l_ac = 2;
w_c = (w_varying/l_crossection) * l_cb //By proportion, load at C is found.
f_resultant_c = 0.5* w_c *l_cb 
// Equations of Equilibrium

//Balancing forces in the x direction:
n_c = 0

//Balncing forces in the y direction:
v_c = f_resultant_c

// Balncing the moments about C:
m_c = - (f_resultant_c*l_ac)


// Displaying results:

printf('\n\nThe resultant force at C   = %.2f N',f_resultant_c);
printf('\nThe horizontal force at C  = %.2f N',n_c);
printf('\nThe vertical force at C    = %.2f N',v_c);
printf('\nThe moment about C         = %.2f Nm',m_c);


// ---------------------------------------------------------END-------------------------------------------------
