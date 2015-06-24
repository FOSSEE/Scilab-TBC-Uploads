clear all; clc;


disp("Scilab Code Ex 1.5 :")

// Given:
f_a = 50; //N
m_a = 70; // Moment at A in Nm
l_ad = 1.25; //Length of AD in m.
l_bd = 0.5; //Length of BD in m.
l_cb = 0.75; //Length of BC in m.
w_l  = 2; //Kg/m
g = 9.81; //N/kg- acceleration due to gravity



//Free Body Diagram :

w_bd = w_l*l_bd*g; //in N. Weight of each segment of pipe that acts through the centre of gravity of each segment.
w_ad = w_l*l_ad*g;

// Equations of Equilibrium

//Balancing forces in the x direction:
f_b_x = 0; // N

//Balncing forces in the y direction:
f_b_y = 0; //N

//Balncing forces in the z direction:
f_b_z = g + w_ad + f_a; //N

// Balancing Moments in the x direction:
m_b_x = - m_a + (f_a*l_bd) + (w_ad*l_bd) + (l_bd/2)*g; //Nm

// Balancing Moments in the y direction:
m_b_y = - (w_ad*(l_ad/2)) - (f_a*l_ad); //Nm

// Balancing Moments in the z direction:
m_b_z = 0; //Nm

v_b_shear = sqrt(f_b_z ^2 + 0); //Shear Force in N
t_b = - m_b_y; //Torsional Moment in Nm
m_b = sqrt(m_b_x ^2+ 0); // Bending moment in Nm


//Display

// Displaying results:


printf('\n\n The weight of segment BD                =   %.1f N',w_bd);
printf('\n The weight of segment AD                = %.1f N',w_ad);
printf('\n The force at B in the Z direction       = %.1f N',f_b_z);
printf('\n The moment about B in the X direction   = %.1f Nm',m_b_x);
printf('\n The moment about G in the Y direction   = %.1f Nm',m_b_y);
printf('\n The Shear Force at B                    = %.1f N',v_b_shear);
printf('\n The Torsional Moment at B               = %.1f Nm',t_b);
printf('\n The Bending Moment at B                 = %.1f Nm',m_b);



//-----------------------------------------------------END-----------------------------------------------------------------------------










