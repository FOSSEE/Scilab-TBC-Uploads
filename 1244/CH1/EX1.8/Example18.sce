

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.8 ")

//Length for heat transfer for stainless steel in m
Lss = 0.1;

//Area for heat transfer for stainless steel in m2
A = 0.01;

//Thermal conductivity for stainless steel in W/m-K
kss = 144;

//Length for heat transfer for Duralumin in m
La1 = 0.02;

//Area for heat transfer for Duralumin in m2
A = 0.01;

//Thermal conductivity for Duralumin in W/m-K
ka1 = 164;

//Resistance in case of steel  in K/W
Rk1 = Lss/(A*kss);

//Resistance in case of Duralumin  in K/W
Rk2 = La1/(A*ka1);

//From Fig. 1.20, contact resistance in K/W
Ri = 0.05;

//Total resistance to heat transfer in K/W
Rtotal = Rk1+Rk2+Ri;

//Temperature diff. is given in K
deltaT = 40;

disp("Maximum allowable rate of heat dissipation in W is")
//Maximum allowable rate of heat dissipation in W
q = deltaT/Rtotal
