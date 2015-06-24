clc ;funcprot(0);
//Example 2.5 

//Initializing the variables
p = 350*10^3;      //Gauge Pressure
pAtm = 101.3*10^3;  //Atmospheric Pressure  
rhoW = 1000;        //Density of Water
sigma = 13.6;      //Relative Density of Mercury
g = 9.81;//Acceleration due to gravity

//Calculations
function[head]=Head(rho)
    head = p/(rho*g);
endfunction
rhoM = sigma*rhoW;
pAbs = p + pAtm;

disp(pAbs/1000,"Absolute pressure(kN/m2)",Head(rhoM),"Equivalent head of water (m):","Part (b)",Head(rhoW),"Equivalent head of water (m) :","Part (a)" );
