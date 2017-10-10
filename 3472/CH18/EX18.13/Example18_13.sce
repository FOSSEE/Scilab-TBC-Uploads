// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.13 :
// Page number 337-338
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 20.0                 // Length of cable(km)
r = 0.248                // Resistance(ohm/km)
x = 0.50*10**-3          // Inductance(H/m)
V_gen = 6600.0           // Generation voltage(V)
f = 50.0                 // Frequency(Hz)
V = 33000.0              // Transmission voltage(V)
rating = 10.0            // Transformer rating(MVA)
loss_cu = 100.0          // Copper loss at full load(kW)
x_tr = 2.5/100           // Transformer reactance
load = 7.5               // Load to be transmitted(MW)
PF = 0.71                // Lagging power factor

// Calculations
R = l*r                                                         // Resistance of the cable(ohm)
I_fl = rating*10**6/(3**0.5*V)                                  // Transformer current at full load(A)
R_eq = loss_cu*1000/(3*I_fl**2)                                 // Equivalent resistance per phase of transformer(ohm)
R_total_hv = R+2.0*R_eq                                         // Total resistance per conductor in terms of hv side(ohm)
X = 2.0*%pi*f*l*x                                               // Reactance of cable per conductor(ohm)
per_X_tr = V/3**0.5*x_tr/I_fl                                   // % reactance of transformer(ohm)
X_total_hv = X+2.0*per_X_tr                                     // Total reactance per conductor in terms of hv side(ohm)
I = load*10**6/(3**0.5*V*PF)                                    // Line current at receiving end(A)
IR = I*R_total_hv                                               // IR drop(V)
IX = I*X_total_hv                                               // IX drop(V)
E_r = V/3**0.5                                                  // Phase voltage at station B(V)
cos_phi_r = PF
sin_phi_r = (1-PF**2)**0.5
E_s = ((E_r*cos_phi_r+IR)**2+(E_r*sin_phi_r+IX)**2)**0.5/1000   // Sending end voltage(kV)
E_s_ll = 3**0.5*E_s                                             // Sending end line voltage(kV)
V_booster = 3**0.5*(E_s-E_r/1000)                               // Booster voltage between lines(kV)
tan_phi_s = (E_r*sin_phi_r+IX)/(E_r*cos_phi_r+IR)               // tanΦ_s
phi_s = atand(tan_phi_s)                                        // Φ_s(°)
cos_phi_s = cosd(phi_s)                                         // cosΦ_s
P_s = 3.0*E_s*I*cos_phi_s                                       // Power at sending end(kW)
loss = P_s-load*1000                                            // Loss(kW)
loss_per = loss/(load*1000)*100                                 // loss percentage

// Results
disp("PART II - EXAMPLE : 11.13 : SOLUTION :-")
printf("\nLoss in the interconnector as a percentage of power received = %.3f percent", loss_per)
printf("\nRequired voltage of the booster = %.3f kV (in terms of H.V) \n", V_booster)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
printf("\n      kVA rating of booster is not calculated in textbook and here")
