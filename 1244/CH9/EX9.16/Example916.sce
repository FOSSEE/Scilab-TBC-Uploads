

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.16 ")

//Total pressure in atm
Pt = 2;
//Temperature in degree K
TH2O = 500;
//Mean beam length in m
L = 0.75;
//Partial pressure of water vapor in atm
PH2O = 0.4;
//Source temperature in degree K
Ts = 1000;

//Since nitrogen is transparent, the absorption in the mixture is due to the water vapor alone.

//Parameters required
//A Parameter in atm-m
A = PH2O*L;
//B Parameter in atm
B = (Pt+PH2O)/2;

//From Figs. 9.46 and 9.48 we find
//For water, C factor in SI units
CH2O = 1.4;
//Emissivity of water
epsilonH2O = 0.29;


//From Eq. (9.115) the absorptivity of H2O is
disp("Absorptivity of H2O is")
alphaH2O = (CH2O*epsilonH2O)*((TH2O/Ts)^0.45)
