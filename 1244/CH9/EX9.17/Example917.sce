

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.17 ")

//Temperature of flue gas in degree F
Tgas = 2000;
//Inner-wall surface temperature in degree F
Tsurface = 1850;
//Partial pressure of water in atm
p = 0.05;
//Convection heat transfer coefficient in Btu/h ft2 F
h = 1;
//Length of square duct in ft
L = 2;
//Volume in ft3
V = L*L;
//Surface area in ft2
A = 4*L;

//The rate of heat flow from the gas to the wall by convection per unit
//length in Btu/h ft is
qc = (h*A)*(Tgas-Tsurface);

//Effective beam length in m
L = ((0.3058*3.4)*V)/A;

//Product of partial pressure and L
k = p*L;

//From Fig. 9.46, for pL=0.026 and T=2000F, we find

//Emissivity
epsilon = 0.035;
//Absorptivity
alpha = 0.039;
//stefans constant
sigma = 0.171;

//Assuming that the brick surface is black, the net rate of heat flow from the gas to the wall by radiation is, according to Eq. (9.117)
qr = (sigma*A)*(epsilon*(((Tgas+460)/100)^4)-alpha*(((Tsurface+460)/100)^4));//Btu/h

disp("Total heat flow from the gas to the duct in Btu/h")
//Total heat flow from the gas to the duct in Btu/h
q = qc+qr
