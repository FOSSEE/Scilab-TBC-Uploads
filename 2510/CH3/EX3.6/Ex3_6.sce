//Variable declaration:
SG = 0.8                    //Specific Gravity
AV = 0.02                   //Absolute Viscosity (cP)
cP = 1                      //Viscosity of centipoise (cP)
VcP = 6.72 * 10**-4         //Pound per feet.sec in a centipoise (lb/ft.s)
pR = 62.43                  //Reference density (lb/ft^3)
 
//Calculations:
u = AV*VcP/cP               //Viscosity of gas (lb/ft.s)
p = SG*pR                   //Density of gas (lb/ft^3)
v = u/p                     //Kinematic viscosity of gas (ft^2/s)
 
//Result:
disp("Kinematic viscosity of gas is:")
disp(v/10**-7)
disp ("x 10**-7 ft^2/s")
