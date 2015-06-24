//Example 7.1 : shear modulus of the material
clc;
clear;
close;
//given data :
format('v',6)
E=210; // youngs's modulus in GN/m^2
v=0.3; // poisson ratio
G=E/(2*(1+v));
disp(G,"shear modulus,G(GN/m^2) = ")
