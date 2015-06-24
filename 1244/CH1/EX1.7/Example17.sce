

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.7 ")

//Because of symmetry, we need to calculate for only one half of the system

//Thickness of firebrick in inches
L1 = 1;
//Thermal conductivity of firebrick in Btu/h-ft-F
kb = 1;
//Thickness of steel plate in inches
L3 = 1/4;
//Thermal conductivity of steel in Btu/h-ft-F
ks = 30;
//Average height of asperities in inches is given as
L2 = 1/32;
//Temperature difference between the steel plates in F is
deltaT = 600;


//The thermal resistance of the steel plate is, on the basis of a unit wall area, equal to
R3 = L3/(12*ks);//12 is added to convert ft to in

//The thermal resistance of the brick asperities is, on the basis of a unit wall area, equal to
R4 = L2/((0.3*12)*kb);//Considering the 30 percent area

//At temperature of 300F, thermal conductivity of air in Btu/h-ft-F is
ka = 0.02;

// Thermal resistance of the air trapped between the asperities, is, on the basis of a unit area, equal to
R5 = L2/((0.7*12)*ka);//Considering the other 70 percent area

//Since R4 and R5 are in parallel, so there combined resistance is
R2 = (R4*R5)/(R4+R5);

//The thermal resistance of half of the solid brick is
R1 = L1/(12*kb);

//The overall unit conductance for half the composite wall in Btu/h-ft2-F is then
kk = 0.5/(R1+R2+R3);

disp("The rate of heat flow per unit area in Btu/h-ft2 is")
//The rate of heat flow per unit area in Btu/h-ft2
q = kk*deltaT
