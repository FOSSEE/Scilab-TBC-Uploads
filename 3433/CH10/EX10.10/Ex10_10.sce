clear;
clc;
funcprot(0);

//function to calculate values of blade chord and radius (optimum conditions)
function [j,lamda,r,l] = fun(phi)
    lamda = 1-cos(phi*%pi/180);
    j = sin(phi*%pi/180)*(2*cos(phi*%pi/180)-1)/(1+2*cos(phi*%pi/180))/(lamda);
    r = 3*j;
    l = 8*%pi*j*lamda;
endfunction

//given data
D = 30;//tip diameter in m
J = 5.0;//tip-speed ratio
Z = 3;//in m
CL = 1.0;

//Calculations
phi1 = 30;//in deg
phi2 = 20;//in deg
phi3 = 15;//in deg
phi4 = 10;//in deg
phi5 = 7.556;//in deg
//Values of blade chord and radius (optimum conditions)
[j1,lamda1,r1,l1] = fun(phi1);
[j2,lamda2,r2,l2] = fun(phi2);
[j3,lamda3,r3,l3] = fun(phi3);
[j4,lamda4,r4,l4] = fun(phi4);
[j5,lamda5,r5,l5] = fun(phi5);

printf('Values of blade chord and radius(optimum conditions):');
printf('\n -----------------------------------------------------------------');
printf('\n phi(deg)      j           4flamda            r(m)           l(m)');
printf('\n -----------------------------------------------------------------');
printf('\n %d        %.2f             %.3f         %.1f              %.3f',phi1,j1,4*j1*lamda1,r1,l1);
printf('\n %d        %.2f             %.3f         %.2f             %.3f',phi2,j2,4*j2*lamda2,r2,l2);
printf('\n %d        %.2f             %.3f         %.2f             %.3f',phi3,j3,4*j3*lamda3,r3,l3);
printf('\n %d        %.3f            %.4f        %.1f             %.3f',phi4,j4,4*j4*lamda4,r4,l4);
printf('\n %.3f       %d              %.4f         %d              %.3f',phi5,ceil(j5),4*j5*lamda5,ceil(r5),l5);
printf('\n -----------------------------------------------------------------');

l_R = [l1,l2,l3,l4,l5]/(0.5*D);
r_R = [r1,r2,r3,r4,r5]/(0.5*D);    
plot(r_R,l_R);
xlabel("r/R",'fontsize',3);
ylabel("l/R",'fontsize',3);
title("Optimal variation of chord length with radius",'fontsize',3);

//there are very small errors in the ansers given in textbook
