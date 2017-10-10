clc;funcprot(0);//EXAMPLE 14.4
// Initialisation of Variables
K=567.53*10^6;..........//Slope of the Equationof Mg- alloy in Pa-nu/m^2
d=10;...........//Grain size in nu-m
Y=52.54*10^6;...........//Intercept of Mg- alloy in Pa
//CALCULATIONS
Yp=Y+(K*d^(-1/2));.......//Predicted yield strength of an Mg- alloy in MPa
disp(Yp,"Predicted yield strength of an Mg- alloy in MPa:")
