clear all; clc;

disp("Scilab Code Ex 10.9 : ")

//Given:
E_st = 200*10^9; //GPa
nu_st = 0.3; //Poisson's ratio
ep1 = 272 *10^-6;
ep2 = 33.8 *10^-6;

//Solving for sigma using matrices:
A = [1 -nu_st; -nu_st 1];
b = [(ep1*E_st) ; (ep2*E_st)];
sigma = A\b;

sigma1= sigma(1)/(10^6);
sigma2= sigma(2)/(10^6);

//Display:

printf('\n\nThe principal stresses at point A are    = %1.0f MPa , %1.1f MPa',sigma1, sigma2);


//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------

