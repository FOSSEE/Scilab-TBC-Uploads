//To determine the resistance of a 1-km strip of copper of rectangular cross section 2.5 cm by 0.05 cm. 
clc;
rho=1.724*10^-8                          //Restivity of the given material(ohm-metre)
l=1                                      //Length of strip(km)
A=(2.5*0.05*10^-4)/10^3                  //Cross sectional area of copper strip(m^2)
R=(rho*l)/A
disp(R,'Resistance of the given copper strip(ohm)')
