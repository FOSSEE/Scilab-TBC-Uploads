//Exa 3.15
clc;
clear;
close;
//given data :
D=500;//Directivity : Unitless
format('v',6)
disp("D = (4*%pi/lambda^2)*Aem");
disp("Aem = D*lambda^2/(4*%pi)");
disp("Aem ="+string(D/(4*%pi))+"lambda^2");