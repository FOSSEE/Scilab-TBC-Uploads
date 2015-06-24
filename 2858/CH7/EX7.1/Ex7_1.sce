//example 7.1
clc; funcprot(0);
sigmao=48;
phi1=30*%pi/180;
phi2=36*%pi/180;
Ka1=(tan(%pi/4-phi1/2))^2;
Ka2=(tan(%pi/4-phi2/2))^2;
sigmaa1=Ka1*sigmao;
disp(sigmaa1,"top soil pressure in kN/m^2");
sigmaa2=Ka2*sigmao;
disp(sigmaa2,"bottom soil pressure in kN/m^2");
Po=1/2*3*16+3*12.48+1/3*3*(19.65-12.48)+1/2*3*29.43;
zbar=(24*(3+3/3)+37.44*(3/2)+10.76*3/3+44.1*3/3)/Po;
disp(zbar,"resultant force acting from the bottom in m");

