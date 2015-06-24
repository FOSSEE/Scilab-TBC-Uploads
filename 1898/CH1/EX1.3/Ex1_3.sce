clear all; clc;

disp("Scilab Code Ex 1.3 :")

// Given:
l_ac = 1;     //m.
l_cd = 1.5 ;  //m.
l_bd = 0.5;   //m.
r_a = 0.125;  //m.
r_d = 0.125;  //m.
W = 2000; // N


// Equations of equilibrium:

//Balancing forces in the x direction:
n_c = -W; // N

//Balncing forces in the y direction:
v_c = -W; //N

// Balncing the moments about C:
m_c = - (W*(r_a +l_ac)- W*r_a)


// Displaying results:

printf('\n\nThe horizontal force at C   = %.2f N',n_c);
printf('\nThe vertical force at C     = %.2f N',v_c);
printf('\nThe moment about C          = %.2f Nm',m_c);

//----------------------------------------------------------------------------END--------------------------------------------------------------------------------------------



