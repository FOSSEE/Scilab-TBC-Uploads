

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.12 ")

// total length of metal sheet in m
L = 0.625/39.4;
//  we estimate the thermal conductivity of the metal sheets to be approximately 43 W/m K
k = 43;
// therefore the resistance in K/W offered by metal sheey
R = L/k;

//heat loss in W/m2 is given as
q = 1200;
// overall heat transfer coefficient between the gas and the door is given
// in W/m2K
U = 20;
//The temperature drop between the gas and the interior surface of the door at the specified heat flux is
deltaT1 = q/U;
//Hence, the temperature of the Inconel will be in degree C
T = 1200-deltaT1;

//The heat transfer coefficient between the outer surface of the door and
//the surroundings at 20°C in W/m2K
h = 5;
//The temperature drop at the outer surface in degree C is
deltaT2 = q/h;
//Selecting milled alumina-silica chips as insulator (Fig 1.31 on page 48)

// Hence, temperature difference across the insulation is
deltaT3 = T-deltaT1-deltaT2;

//thermal conductivity for milled alumina-silica chips in W/mK is
k = 0.27;

disp("The insulation thickness in m is")
//The insulation thickness in m
L = (k*deltaT3)/q
