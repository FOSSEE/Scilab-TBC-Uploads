// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.8 :
// Page number 273-275
clear ; clc ; close ; // Clear the work space and console
funcprot(0)

// Given data
V = 33.0*10**3        // Line voltage(V)
R = 6.0               // Resistance per phase(ohm)
X = 15.0              // Reactance per phase(ohm)

// Calculations
V_S = V/3**0.5                                              // Sending end phase voltage(V)
V_R = V/3**0.5                                              // Receiving end phase voltage(V)
beta = atand(X/R)                                           // β(°)
Z = (R**2+X**2)**0.5                                        // Impedance(ohm)
delta_0 = 0.0                                               // δ(°)
P_0 = (V_R/Z**2)*(V_S*Z*cosd((delta_0-beta))-V_R*R)/10**6   // Power received(MW/phase)
delta_1 = 30.0                                              // δ(°)
P_1 = (V_R/Z**2)*(V_S*Z*cosd((delta_1-beta))-V_R*R)/10**6   // Power received(MW/phase)
delta_2 = 60.0                                              // δ(°)
P_2 = (V_R/Z**2)*(V_S*Z*cosd((delta_2-beta))-V_R*R)/10**6   // Power received(MW/phase)
delta_3 = beta                                              // δ(°)
P_3 = (V_R/Z**2)*(V_S*Z*cosd((delta_3-beta))-V_R*R)/10**6   // Power received(MW/phase)
delta_4 = 90.0                                              // δ(°)
P_4 = (V_R/Z**2)*(V_S*Z*cosd((delta_4-beta))-V_R*R)/10**6   // Power received(MW/phase)
delta_5 = 120.0                                             // δ(°)
P_5 = (V_R/Z**2)*(V_S*Z*cosd((delta_5-beta))-V_R*R)/10**6   // Power received(MW/phase)
delta_6 = (acosd(R/Z))+beta                                 // δ(°)
P_6 = (V_R/Z**2)*(V_S*Z*cosd((delta_6-beta))-V_R*R)/10**6   // Power received(MW/phase)


delta = [delta_0,delta_1,delta_2,delta_3,delta_4,delta_5,delta_6]
P = [P_0,P_1,P_2,P_3,P_4,P_5,P_6]
a = gca() ;
a.thickness = 2                                  // sets thickness of plot
plot(delta,P,'ro-')
a.x_label.text = 'Electrical degree'             // labels x-axis
a.y_label.text = 'Power in MW/phase'             // labels y-axis
xtitle("Fig E10.7 . Power angle diagram") 
xset('thickness',2)                              // sets thickness of axes
xstring(70,14.12,'P_max = 14.12 MW/phase(approximately)')
P_max = V_R/Z**2*(V_S*Z-V_R*R)/10**6                                   // Maximum power transmitted(MW/phase)
delta_equal = 0.0                                                      // δ With no phase shift(°)
P_no_shift = (V_R/Z**2)*(V_S*Z*cosd((delta_equal-beta))-V_R*R)/10**6   // Power transmitted with no phase shift(MW/phase)

// Results
disp("PART II - EXAMPLE : 10.8 : SOLUTION :-")
printf("\nPower angle diagram is plotted and is shown in the Figure 1")
printf("\nMaximum power the line is capable of transmitting, P_max = %.2f MW/phase", P_max)
printf("\nWith equal voltage at both ends power transmitted = %.f MW/phase", abs(P_no_shift))
