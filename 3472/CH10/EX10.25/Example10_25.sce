// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.25 :
// Page number 163
clear ; clc ; close ; // Clear the work space and console

// Given data
z = complex(0.2,0.6)     // Per phase impedance(ohm)
V_r = 6351.0             // Receiving end voltage per phase(V)
reg = 7.5/100.0          // Voltage regulation

// Calculations
V_s = (1+reg)*V_r                                  // Sending end voltage per phase(V)
R = real(z)                                        // Resistance of the line(ohm)
X = imag(z)                                        // Reactance of the line(ohm)
Z = (R**2+X**2)**0.5                               // Impedance per phase(ohm)
P_m = (V_r**2/Z)*((Z*V_s/V_r)-R)                   // Maximum power transmitted through line(W/phase)
P_m_MW = P_m/10**6                                 // Maximum power transmitted through line(MW/phase)
P_m_MWtotal = 3*P_m_MW                             // Total maximum power(MW)
Q = -(V_r**2*X)/Z**2                               // Reactive power per phase(Var)
Q_MW = Q/10**6                                     // Reactive power per phase(MVAR)
phi_r = atand(abs(Q_MW/P_m_MW))                    // Φ_r(°)
PF_r = cosd(phi_r)                                 // Receiving end lagging PF
I = P_m/(V_r*PF_r)                                 // Current delivered(A)
I_KA = I/1000.0                                    // Current delivered(KA)
loss = 3*I**2*R                                    // Total line loss(W)
loss_MW = loss/10**6                               // Total line loss(MW)

// Results
disp("PART II - EXAMPLE : 3.25 : SOLUTION :-")
printf("\nMaximum power transmitted through the line, P_m = %.1f MW", P_m_MWtotal)
printf("\nReceiving end power factor = %.2f (lagging)", PF_r)
printf("\nTotal line loss = %.2f MW", loss_MW)
