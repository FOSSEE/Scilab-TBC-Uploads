clc;clear;
//Example 8.9

//given data
um=0.6;//mass adsoption coeffcient in cm^2/g
p=2.7;//density of aluminium in g/cm^3

//calculations
u=p*um;
disp(u,'linear adsorption coefficent of aluminium in 1/cm');
T=0.693/u
disp(T,'the hvl in cm');
x=(log(20))*(1/u);
disp(x,'the thickness in cm')