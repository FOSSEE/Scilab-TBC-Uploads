//clear//
//Caption: Program to calculate surface charge density,Flux density, Field Intensity of coaxial cable
//Example3.2
//page 64
clc;
Q_innercyl = 30e-09; //total charge on the inner conductor in coulombs
a = 1e-03; // inner radius of coaxial cable in metre
b = 4e-03; // outer radius of coaxial cable in metre
L = 50e-02; //length of coaxial cable
rs_innercyl = Q_innercyl/(2*%pi*a*L);
rs_outercyl = Q_innercyl/(2*%pi*b*L);
e0 = 8.854e-12; //free space relative permittivity F/m
r = sym('r');
Dr = a*rs_innercyl/r;
Er = Dr/e0;
disp(rs_innercyl,'Surface charge density of inner cylinder of coaxial cable in C/square.metre, rs_innercyl=')
disp(rs_outercyl,'Surface charge density of outer cylinder of coaxial cable in C/square.metre, rs_outercyl=')
disp(Dr,'Electric Flux Density in C/square.metre Dr=')
disp(Er,'Electric Field Intensity in V/m Er=')
//Result
//Surface charge density of inner cylinder of coaxial cable in C/square.metre, rs_innercyl=   
//    0.0000095  
//Surface charge density of outer cylinder of coaxial cable in C/square.metre, rs_outercyl=   
//    0.0000024  
//Electric Flux Density in C/square.metre Dr=   
// 9.5488183337312011E-9/r   
//Electric Field Intensity in V/m Er=   
// 1078.47507722286/r  
