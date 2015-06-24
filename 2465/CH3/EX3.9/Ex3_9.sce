//Chapter-3,Example 9,Page 59
clc;
close;

mole_U =11.9/238 //mole of Uranium

mole_Pb =10.3/206 //mole of lead

t_half= 4.5*10^9   //half life of Uranium

//  U(238)=(U(238) + Pb(206)) * exp(-lamda*t)

//  1 = (1 + Pb(206)/U(238)) * exp(-lamda*t)

//  1 = (1 + 0.5) * exp(-lamda*t)

lamda = 0.693/t_half

t= log10(1+ mole_Pb/mole_U)/(log10(%e)*lamda)

printf('the age of the ore is ')

disp(t)

printf('    years')
