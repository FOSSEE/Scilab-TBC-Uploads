clc ;funcprot(0);
//Example 2.9

//Initializing the variables
rho = 10^3;    //Density of fluid
rhoM = 0.8*10^3;    //Density of manometer liquid
g = 9.81;    //Acceleration due to gravity
a = 0.25;
b = 0.15;
h = 0.3;
//Calculations
function[P]=PressureDiff(a,b,h,rho,rhoM)
    P = rho*g*(b-a) + h*g*(rho-rhoM);
endfunction

disp(PressureDiff(a,b,h,rho,rhoM),"Pressure Differnece(N/m2):","!-----Part (b)-----!",PressureDiff(a,b,h,rho,0)/1000,"Pressure Differnece(kN/m2):","!-----Part (a): rhoM is negligible assuming zero-----!");
