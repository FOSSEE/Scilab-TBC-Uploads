

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 8 Example # 8.1 ")

//Outer dia in m
d = 0.0254;
//mass flow rate of hot fluid in kg/s
mh = 6.93;
//Specific heat of hot fluid n J/kgK
ch = 3810;
//Inlet temperature of hot fluid in degree C
Thin = 65.6;
//Outlet temperature of hot fluid in degree C
Thout = 39.4;
//mass flow rate of cold fluid in kg/s
mc = 6.3;
//Specific heat of cold fluid n J/kgK
cc = 4187;
//Inlet temperature of cold fluid in degree C
Tcin = 10;
//Overall heat transfer coefficient in W/m2K
U = 568;

//Using energy balance, outlet temp. of cold fluid in degree C
Tcout = Tcin+((mh*ch)*(Thin-Thout))/(mc*cc);

//The rate of heat flow in W
q = (mh*ch)*(Thin-Thout);

disp("Parallel-flow tube and shell")
//From Eq. (8.18) the LMTD for parallel flow
//Temperature difference at inlet in degree K
deltaTa = Thin-Tcin;
//Temperature difference at outlet in degree K
deltaTb = Thout-Tcout;
//LMTD in degree K
LMTD = (deltaTa-deltaTb)/log(deltaTa/deltaTb);

//From Eq. (8.16) 
disp("Heat transfer surface area in m2 is")
//Heat transfer surface area in m2
A = q/(U*LMTD)

disp("Counterflow tube and shell")
//LMTD in degree K
LMTD = 29.4;

disp("Heat transfer surface area in m2 is")
//Heat transfer surface area in m2
A = q/(U*LMTD)

A1 = A;//To be used further as a copy of this area

disp("Counterflow exchanger with 2 shell passes and 72 tube passes")

//Correction factor found from Fig. 8.15 to the mean temperature for counterflow
P = (Tcout-Tcin)/(Thin-Tcin);
//Heat capacity ratio
Z = (mh*ch)/(mc*cc);
//From the chart of Fig. 8.15, F= 0.97
F = 0.97; //F-Factor
disp("Heat transfer surface area in m2 is")
//Heat transfer surface area in m2 is
A = A1/F

disp("Cross-flow, with one tube pass and one shell pass, shell-side fluid mixed")
//Using same procedure, we get from charts
F = 0.88; //F-Factor
disp("Heat transfer surface area in m2 is")
//Heat transfer surface area in m2 is
A = A1/F
