clc ;funcprot(0);
//Example 2.7 

//Initializing the variables
rho = 0.8*10^3;    //Density of fluid
rhoM = 13.6*10^3;    //Density of manometer liquid
g = 9.81;//Acceleration due to gravity

//Calculations
function[P]=fluidPressure(h1,h2)
    P = rhoM*g*h2-rho*g*h1;
endfunction

disp(fluidPressure(0.1,-0.2)/1000,"Gauge pressure (kN/m2):","!-----Part (b)-----!",fluidPressure(0.5,0.9)/1000,"Gauge pressure (kN/m2):","!-----Part (a)-----!");
