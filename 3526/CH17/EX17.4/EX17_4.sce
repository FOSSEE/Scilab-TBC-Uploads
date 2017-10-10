clc;funcprot(0);//EXAMPLE 17.4
//page 531
// Initialisation of Variables
rho1=0.95;...........//Density of polyethylene in g/cm^3
rho2=2.4;...........//Density of clay in g/cm^3
f1=0.65;...............//Volume fraction of Polyethylene 
f2=0.35;...............//Volume fraction of Clay 
f3=1.67;.............//Volume fraction of polyethylene after sacrifice
f4=1.06;.............//Volume fraction of Clay after sacrifice
pa1=650;............// No. of parts of polyethylene in 1000cm^3 composite  in cm^3
pa2=350;............// No. of parts of clay in 1000cm^3 composite  in cm^3
//Calculations
pa3=(pa1*rho1)/454;.........//No. of parts of Polyethylene in 1000cm^3 composite  in lb
pa4=(pa2*rho2)/454;.........//No. of parts of clay in 1000cm^3 composite  in lb
co1=pa3* 0.05;................//Cost of material Polyethylenein Dollars
co2=pa4* 0.05;................//Cost of materials clay in Dollars
c0=co1+co2;...................//Cost of materials in Dollars
rho3=(f1*rho1)+(f2*rho2);.........//Composite density in g/cm^3
co3=f3* 0.05;................//Cost of material polyethylene after savings in Dollars
co4=f4* 0.05;................//Cost of material clay after savings in Dollars
c1=co3+co4;.................//Cost of materials after savings in Dollars
rho4=(0.8*rho1)+(0.2*rho2);..............//Density of composite after saving in g/cm^3
disp(rho3,"Composite density in g/cm^3:")
disp(rho4,"Composite densityafter saving in g/cm^3:")

