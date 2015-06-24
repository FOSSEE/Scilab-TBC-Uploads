// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-9

clear; clc; close; // Clear the work space and console.

// Given data
V = 240 ; // Voltage rating of dc shunt motor in volt
I_L = 55 ; // Rated line current in A 
S = 1200 ; // Speed in rpm of the dc shunt motor
P_r = 406.4 ; // Rotational losses in W at rated load
R_f = 120 ; // Field resistance in ohm
R_a = 0.4 ; // Armture resistance in ohm

// Calculations
// case a

V_f = V ; // Voltage across field winding in volt
I_f = V_f / R_f ; // Field current in A
I_a = I_L - I_f ; // Rated armature current in A

V_a = V ; // Voltage across armature in volt
E_c = V_a - I_a*R_a ; // back EMF in volt
P_d = E_c * I_a ; // Power developed by the armature in W

// case b
P_o = P_d - P_r  ; // Rated output power in W
P_o_hp = P_o / 746 ; // Rated output power in hp

// case c
T_o = (P_o_hp * 5252)/S ; // C in lb-ft
T_o_Nm = T_o * (1.356); // Rated output torque in N-m

// case d
P_in = V*I_L ; // Input power in W
eta = (P_o/P_in)*100 ; // Efficiency at rated load

// case e
// At no-load
P_o_nl = 0 ;
P_r_nl = P_r ; // Rotational losses in W at no load
P_d_nl = P_r_nl ;

I_a_nl = P_d_nl / V_a ; // No-load armature current in A

E_c_nl = V ; // No-load voltage in volt
E_c_fl = E_c ; // Full-load voltage in volt
S_fl = S ; // Full-load speed in rpm
S_nl = (E_c_nl / E_c_fl)*S_fl ; // No-load speed in rpm

// case f
SR = (S_nl - S_fl)/S_fl * 100 ; // Speed regulation

// Display the results
disp("Example 12-9 Solution : ");

printf(" \n a: E_c = %.1f V \n ",E_c );
printf(" \n    Power developed by the armature at rated load :\n    P_d = %.1f W \n ",P_d);

printf(" \n b: Rated output power :\n    P_o = %d W \n ", P_o );
printf(" \n    P_o = %d hp \n ",P_o_hp);

printf(" \n c: Rated output torque :\n    T_o = %.2f lb-ft ",T_o);
printf(" \n    T_o = %.f N-m \n ",T_o_Nm );

printf(" \n d: Efficiency at rated load :\n    η = %.1f percent \n ",eta );

printf(" \n e: At no-load, P_o = %d W ; therefore\n\t\tP_d = P_r = EcIa ≅ VaIa = %.1f W \n",P_o_nl,P_r);
printf(" \n    No-load armature current :\n    I_a(nl) = %.3f A \n ",I_a_nl );
printf(" \n    No-load speed :\n    S_nl = %f ≃ %.f rpm \n ",S_nl,S_nl );

printf(" \n f: Speed regulation :\n    SR = %.1f percent ",SR );

printf(" \n    Variation in SR is due to non-approximation of S_nl = %f rpm",S_nl);
printf(" \n    while calculating SR in scilab .")
