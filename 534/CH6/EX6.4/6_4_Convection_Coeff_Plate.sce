clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 6.4   Page 362 \n'); //Example 6.4
// Convection Mass Transfer coefficient 

//Operating Conditions
v = 1;        //[m/s]  Velocity of water
L = 0.6;      //[m] Plate length
Tw1 = 300;    //[K]
Tw2 = 350;    //[K]
//Coefficients [W/m^1.5 . K]
Clam1 = 395;
Cturb1 = 2330;
Clam2 = 477;
Cturb2 = 3600;

//Water Properties at T = 300K
p1 = 997;    //[kg/m^3]  Density
u1 = 855*10^-6;    //[N.s/m^2] Viscosity
//Water Properties at T = 350K
p2 = 974;    //[kg/m^3]  Density
u2 = 365*10^-6;    //[N.s/m^2] Viscosity


Rec = 5*10^5;        //Transititon Reynolds Number
xc1 = Rec*u1/(p1*v); //[m]Transition length at 300K
xc2 = Rec*u2/(p2*v); //[m]Transition length at 350K

//Integrating eqn 6.14
//At 300 K
h1 = [Clam1*xc1^.5/.5 + Cturb1*(L^.8-xc1^.8)/.8]/L;

//At 350 K
h2 = [Clam2*xc2^.5/.5 + Cturb2*(L^.8-xc2^.8)/.8]/L;

printf("\n\n Average Convection Coefficient over the entire plate for the two temperatures at 300K = %.2f W/m^2.K and at 350K = %.2f W/m^2.K", h1,h2);
//END