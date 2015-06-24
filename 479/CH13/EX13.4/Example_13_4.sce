//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.4
clear;
clc;

//Given
T = [80.6 79.0 77.3 61.4];//Various temperature in deg cel
x1 = [0.0 15.0 29.0 100.0];//mole fraction of CHCl3 in liquid phase
y1 = [0.0 20.0 40.0 100.0];//mole fraction of CHCl3 in vapour phase
P1 = [1370 1310 1230 700];//Vapour pressure of CHCl3 in mm Hg
P = 760;//Total pressure in mm Hg

//To Calculate the equilibrium data i.e y/x and compare with the experimental values
//From equation 13.27 (page no 245);K = y1/x1 = Pi/P
mprintf('Temperature    Experimental   Calculated');

for i = 1:4
    mprintf('\n %f',T(i));
    if x1(i) == 0 
        mprintf('     Not defined');
        else
 K_ex(i) = y1(i)/x1(i);
mprintf('        %f',K_ex(i));
 end
K_c(i) = P1(i)/P;
mprintf('      %f',K_c(i));
end

if K_ex(i) == K_c(i) 
    then mprintf('\n\n The liquid solution is perfect');
else
    mprintf('\n\n The liquid solution is imperfect');
end
//end