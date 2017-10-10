clc;funcprot(0);//EXAMPLE 7.1
// Initialisation of Variables
f=1.12;.......//Geometry factor for the specimen and flaw
sigma=45000;.....//Applied stress on Steel in psi
K=80000;.........//The stress intensity factor
//CALCULATIONS
a=(K/(f*sigma))^2/%pi;........//Depth of crank in in
disp(a,"Depth of crank that will propagate in the steel in in:")
