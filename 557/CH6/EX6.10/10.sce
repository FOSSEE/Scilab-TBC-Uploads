clc;funcprot(0); //Example 6.10

//Initializing the variables 
Ra = 0.2;
Rb = 0.1;
H = 0.18;
Za = 0.125;

//Calculations
Y =  Ra^2*(H-Za);
Zb = H - Y/Rb^2;

disp(Zb*1000,"Height above datum of a point B on the free surface at a radius of 100 mm (mm):");