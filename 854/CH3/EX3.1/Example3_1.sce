//clear//
//Caption: Program to find Electric Flux density 'D' of a uniform line charge
//Example3.1
//page 54
clc;
e0 = 8.854e-12; //free space permittivity in F/m
rL = 8e-09; //line charge density c/m
r = 3; // distance in metre
E = Electric_Field_Line_Charge(rL,e0,r); //electric field intensity of line charge
D = e0*E;
disp(D,'Electric Flux Density in Coulombs per square metre D =')
//Result
// Electric Flux Density in Coulombs per square metre D =   
//     4.244D-10  
