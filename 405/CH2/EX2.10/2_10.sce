clear;
clc;
printf("\t\t\tExample Number 2.10\n\n\n");
// rod with heat sources 
// illustration2.10
// solution

// q_dot is uniform heat source per unit volume 
// h is convection coefficient
// k is heat transfer coefficient
// A is area of crossection
// P is perimeter 
// Tinf is environment temperature 
// we first make an energy balance on the element of the rod shown in figure(2-10)
// energy in left place + heat generated in element  =  energy out right face + energy lost by convection
// or 
// -(k*A*dT_by_dx)+(q_dot*A*dx) = -(k*A(dT_by_dx+(d2T_by_dx2)*dx))+h*P*dx*(T-Tinf)
// simlifying we have 
// d2T_by_dx2-((h*P)/(k*A))*(T-Tinf)+q_dot/k = 0
// replacing theta = (T-Tinf) and (square meter) = ((h*P)/(k*A))
// d2theta_by_dx2-(square meter)*theta+q_dot/k = 0
// we can make a further substitution as theta` = theta-(q_dot/(k*(square meter)))
// so that our differential equation becomes 
// d2theta`_by_dx2-(square meter)*theta`
// which has the general solution theta` = C1*exp^(-m*x)+C2*exp^(m*x)
// the two end temperatures are used to establish the boundary conditions:
// theta` = theta1` = T1-Tinf-q_dot/(k*(square meter)) = C1+C2
// theta` = theta2` = T2-Tinf-q_dot/(k*(square meter)) = C1*exp^(-m*L)+C2*exp^(m*L)
// solving for the constants C1 and C2 gives 
// (((theta1`*exp^(2*m*L)-theta2`*exp^(m*L))*exp^(-m*x))+((theta2`exp^(m*L)-theta1`)exp^(m*x))/(exp^(2*m*L)-1))
printf("the expression for the temperature distribution in the rod is ");
printf("\n theta` = (((theta1`*exp^(2*m*L)-theta2`*exp^(m*L))*exp^(-m*x))+((theta2`exp^(m*L)-theta1`)exp^(m*x))/(exp^(2*m*L)-1))");
printf("\n for an infinitely long heat generating fin with the left end maintained at T1, the temperature distribution becomes ");
printf("\n theta`/theta1 = exp^(-m*x)");



