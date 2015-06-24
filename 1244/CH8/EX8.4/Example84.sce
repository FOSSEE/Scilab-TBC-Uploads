

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 8 Example # 8.4 ")

//Pressure of steam in inches of Hg
P = 4;
//At this pressure, temperture of condensing steam in degree F
Thin = 125.4;

//Flow rate of seawater in lb/s
mw = 25000;
//Specific heat of water in Btu/lb F
c = 0.95;
//Inlet and outlet temperature of seawater in degree F
Tcin = 60;
Tcout = 110;
//Heat transfer coefficient of steam in Btu/h ft2 F
hsteam = 600;
//Heat transfer coefficient of water in Btu/h ft2 F
hwater = 300;
//Outer diameter in inches
OD = 1.125;
//Inner diameters in inches
ID = 0.995;

//required effectiveness of the exchanger
E = (Tcout-Tcin)/(Thin-Tcin);

//For a condenser, Cmin/Cmax=0, and from Fig. 8.20, NTU =1.4.
NTU = 1.4;

//The fouling factors from Table 8.2 are 0.0005 h ft2°F/Btu for both sides of the tubes.
//F-Factor
F = 0.0005;

//The overall design heat-transfer coefficient in Btu/h ft2 F per unit outside area of tube is, from Eq. (8.6)
U = 1/(1/hsteam+F+(OD/((2*12)*60))*log(OD/ID)+(F*OD)/ID+OD/(hwater*ID));

//The total area A is 20*pi*D*L, and since U*A/Cmin=1.4

disp("The length of the tube in ft is")
//The length of the tube in ft
L = (((1.4*mw)*c)*12)/(((Tcin*%pi)*OD)*U)
