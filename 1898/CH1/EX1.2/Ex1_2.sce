clear all; clc;

disp("Scilab Code Ex 1.2 : ")

f_d = 225; //N
w_uniform = 800; // N/m
l_ac = 0.200; //m
l_cb = 0.05+0.1; //m
l_bd = 0.100;  //m
l_bearing = 0.05;    //m
f_resultant = w_uniform*l_cb //120N
l_f_resultant_b = (l_cb/2)+ l_bearing; //0.125m
l = l_ac + l_cb + l_bearing + l_bd  


// This problem is solved by considering segment AC of the shaft.

//Support Reactions:

m_b = 0;                         // Net moment about B is zero for equilibrium . Sum Mb = 0.
a_y = -((f_d*l_bd) - (f_resultant*l_f_resultant_b))/ (l - l_bd) // finding the reaction force at A

// Refer to the free body diagram in Fig.1-5c.
f_c = 40                        //N
//Balancing forces in the x direction:
n_c = 0

//Balncing forces in the y direction:
v_c = a_y - f_c            //-18.75N - 40N-Vc = 0

// Balncing the moments about C:
m_c =  ((a_y * (l_ac + 0.05)) - f_c*(0.025) ) // Mc+40N(0.025m)+ 18.75N(0.250m) = 0


// Displaying results:

printf('\n\nThe resultant force       = %.2f N',f_resultant);
printf('\nThe reaction force at A   = %.2f N',a_y);
printf('\nThe horizontal force at C = %.2f N',n_c);
printf('\nThe vertical force at C   = %.2f N',v_c);
printf('\nThe moment about C        = %.2f Nm',m_c);

//-------------------------------------------------------------------END-----------------------------------------------------------------------------------------

