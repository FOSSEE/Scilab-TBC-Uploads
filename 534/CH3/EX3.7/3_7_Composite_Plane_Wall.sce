clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.7   Page 129 \n'); //Example 3.7
// Composite Plane wall

Tsurr = 30+273;    //[K] Temperature of surrounding Water
h = 1000;      //[W/m^2.K] Heat Convection Coeff of Water
kb = 150;    //[W/m.K] Material B
Lb = .02;    //[m] Thickness Material B
ka = 75;    //[W/m.K] Material A
La = .05;    //[m] Thickness Material A
qa = 1.5*10^6;  //[W/m^3] Heat generation at wall A
qb = 0;  //[W/m^3] Heat generation at wall B

T2 = Tsurr + qa*La/h;

Rcondb = Lb/kb;
Rconv = 1/h;
T1 = Tsurr +(Rcondb + Rconv)*(qa*La);
//From Eqn 3.43
T0 = qa*La^2/(2*ka) + T1;

printf("\n\n (a) Inner Temperature of Composite To = %i degC \n (b) Outer Temperature of the Composite T2 = %i degC",T0-273,T2-273);
//END