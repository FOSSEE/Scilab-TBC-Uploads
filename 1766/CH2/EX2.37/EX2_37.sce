clc;funcprot(0);//Example 2.37
//Initilisation of Variables
Ka=200;....//thermal conductivity of aluminium rod in W/m*degrees celcius 
xa=40;....//distance of aluminium rod from base when temp is Ta in cm
x=20;...//distance of latter rod from base when temp is Ta in cm
//calculations
K=Ka*(x/xa)^2;....//thermal conductivity of latter rod in W/m*degrees celcius 
disp(K,"thermal conductivity of latter rod in W/m*degrees celcius ")
