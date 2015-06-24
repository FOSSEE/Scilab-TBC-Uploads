// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-8

clear; clc; close; // Clear the work space and console.

// Given data
V = 240 ; // Voltage rating of dc shunt motor in volt
P_hp = 5 ; // Power rating of dc shunt motor in hp
S_fl = 1100 ; // Speed in rpm of the dc shunt motor
R_a = 0.4 ; // Armture resistance in ohm
R_f = 240 ; // Field resistance in ohm
eta = 0.75 ; // Full-load efficiency

// Calculations
// case a
V_L = V ; // Load voltage
P_o = P_hp * 746 ; // Power rating of dc shunt motor in W
I_L = P_o / (eta*V_L); // Rated input line current in A

V_f = V ; // Voltage across field winding in volt
I_f = V_f / R_f ; // Field current in A
I_a = I_L - I_f ; // Rated armature current in A

// case b
V_a = V ; // Voltage across armature in volt
E_c = V_a - I_a*R_a ; // back EMF in volt
P_d = E_c * I_a ; // Power developed by the armature in W

// case c
P_r = P_d - P_o ; // Rotational losses in W at rated load

// case d
// At no-load
P_o_nl = 0 ;
P_r_nl = P_r ; // Rotational losses in W at no load
P_d_nl = P_r_nl ;

// case e
I_a_nl = P_d_nl / V_a ; // No-load armature current in A

// case f
E_c_nl = V ; // No-load voltage in volt
E_c_fl = E_c ; // Full-load voltage in volt
S_nl = (E_c_nl / E_c_fl)*S_fl ; // No-load speed in rpm

// case g
SR = (S_nl - S_fl)/S_fl * 100 ; // Speed regulation

// Display the results
disp("Example 12-8 Solution : ");

printf(" \n a: Rated input line current :\n    I_L = %.2f A \n ",I_L);
printf(" \n    Rated armature current :\n    I_a = %.2f A \n ",I_a );

printf(" \n b: E_c = %.1f V \n ",E_c );
printf(" \n    Power developed by the armature at rated load :\n    P_d = %d W \n ",P_d);

printf(" \n c: Rotational losses at rated load :\n    P_r = %d W \n ", P_r );

printf(" \n d: At no-load, P_o = %d W ; therefore\n\t\tP_d = P_r = %d W \n",P_o_nl,P_r);

printf(" \n e: No-load armature current :\n    I_a(nl) = %.2f A \n ",I_a_nl );

printf(" \n f: No-load speed :\n    S_nl = %.f rpm \n ",S_nl );

printf(" \n g: Speed regulation :\n    SR = %.1f percent ",SR );
