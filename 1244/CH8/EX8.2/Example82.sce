

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 8 Example # 8.2 ")

//mass flow rate of hot fluid in kg/s
mh = 1;
//Specific heat of hot fluid n J/kgK
ch = 2100;
//Inlet temperature of hot fluid in degree C
Thin = 340;
//Outlet temperature of hot fluid in degree C
Thout = 310;
//Specific heat of cold fluid n J/kgK
cc = 4187;
//Inlet temperature of cold fluid in degree C
Tcin = 290;
//Outlet temperature of cold fluid in degree C
Tcout = 300;

//The heat capacity rate of the water in J/kgK is, from Eq. (8.14)
cc = ch*((Thin-Thout)/(Tcout-Tcin));

//Temperature ratio P and Z is, from Eq. (8.20)
P = (Thin-Thout)/(Thin-Tcin); // P Temperature ratio
Z = (Tcout-Tcin)/(Thin-Thout); // Z Temperature ratio

//From Fig. 8.14, F0.94 and the mean temperature difference in degree K is
//F Value
F = 0.94;
//Temperature difference at inlet in degree K
deltaTa = Thin-Tcout;
//Temperature difference at outlet in degree K
deltaTb = Thout-Tcin;
//LMTD in degree K
LMTD = (deltaTa-deltaTb)/log(deltaTa/deltaTb);
//Mean temperature difference in degree K
deltaTmean = F*LMTD;

//From Eq. (8.17) the overall conductance in W/K is
UA = ((mh*ch)*(Thin-Thout))/deltaTmean;

//With reference to the new conditions and Eq. 6.62
//Conductance in W/K
UA = UA*((3/4)^0.8);
//Number of transfer units(NTU) value
NTU = UA/(((3/4)*mh)*ch);
//Heat capacity ratio
K = (((3/4)*mh)*ch)/cc;

//From Fig. 8.20 the effectiveness is equal to 0.61
//Effectiveness
E = 0.61;
//New inlet temperaturre of oil in degree K
Toilin = 370;
//From eq. 8.22a
disp("Outlet temperature of oil in degree K")
//Outlet temperature of oil in degree K
Toilout = Toilin-E*(Toilin-Tcin)
