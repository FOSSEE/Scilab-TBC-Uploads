clear all; clc;

disp("Scilab Code Ex 1.4 :")

// Given:
l_ag = 1; //Length of AG is 1m.
l_gd = 1; //Length of GD is 1m.
l_de = 3; //Length of DE is 1m.
f_a = 1500; //Force at A is 1500N.
l_ec = 1.5;  //Length of EC is 1m.
l = l_ag +l_gd +l_de;
w_uniform_varying = 600; //Nm.

w_resultant = 0.5*l_de*w_uniform_varying;
// calling point of action of resultant as P
l_ep = (2/3)*l_de; //Distance between points P and E.
l_ap = l - l_ep; // Distance between points A and P.


f_ba = 7750; //N
f_bc = 6200; //N
f_bd = 4650; //N

//Free Body Diagram: Using the result for Fba, the left section AG of the beam is shown in Fig 1-7d.

// Equations of equilibrium:

//Balancing forces in the x direction:
n_g = -f_ba * (4/5); // N

//Balncing forces in the y direction:
v_g = -f_a + f_ba*(3/5); //N

// Balncing the moments about C:
m_g = (f_ba * (3/5)*l_ag) - (f_a * l_ag); //Nm



// Displaying results:


printf('\n\nThe horizontal force at G = %.2f N',n_g);
printf('\nThe vertical force at G   = %.2f N',v_g);
printf('\nThe moment about G        = %.2f Nm',m_g);


//-------------------------------------------------------------------END----------------------------------------------------------------------------------------
