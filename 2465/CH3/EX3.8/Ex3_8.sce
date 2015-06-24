//Chapter-3,Example 8,Page 58
clc;
close;

//  U(238)=(U(238) + Pb(206)) * exp(-lamda*t)

//  1 = (1 + Pb(206)/U(238)) * exp(-lamda*t)

//since  Pb(206)/U(238) = 0.5 

//  1 = (1 + 0.5) * exp(-lamda*t)

t_half = 4.5 *10^9   //half life of Uranium

lamda = 0.693/t_half

t= log10(1.5)/(log10(%e)*lamda)

printf('the age of the rock specimen is ')

disp(t)

printf('   years')
