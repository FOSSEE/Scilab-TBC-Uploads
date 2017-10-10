clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 10

clear; clc; close; // Clear the work space and console.
//
// Given data
V1_mag    = 120.0000 * sqrt(3);
V1_angle  =  30.0000; 
V2_mag    = 120.0000 * sqrt(3);
V2_angle  =  -90.000; 
Van_mag   = 120.0000;
Van_angle =   0.0000; 
Vbn_mag   = Van_mag;
Vbn_angle =  -120.0000; 
Vcn_mag   = Van_mag;
Vcn_angle =  120.0000; 
Zan       = complex(0,5);                                                       
Zbn       = complex(10,0);                                                      
Zcn       = complex(0,-10);                                                     
V1        = complex(V1_mag*cosd(V1_angle),V1_mag*sind(V1_angle));               
V2        = complex(V2_mag*cosd(V2_angle),V2_mag*sind(V2_angle));               
Z11       = complex(10,5)
Z12       = complex(-10,0);
Z21       = Z12;
Z22       = complex(10,-10);
// Calculations Determinants 
delta = det([Z11  Z12; Z21 Z22]);
delta_mag   = norm(delta); 
delta_real  = real(delta);
delta_imag  = imag(delta);
delta_angle = atand(delta_imag,delta_real);
// Calculations Determinants For Source Voltage V1
delta1 = det([V1  Z12; V2  Z22]);
delta1_mag   = norm(delta1); 
delta1_real  = real(delta1);
delta1_imag  = imag(delta1);
delta1_angle = atand(delta1_imag,delta1_real);
// Calculations Determinants For Source Voltage V2
delta2 = det([Z11  V1; Z12  V2]);
delta2_mag   = norm(delta2); 
delta2_real  = real(delta2);
delta2_imag  = imag(delta2);
delta2_angle = atand(delta2_imag,delta2_real);
// Calculations Mesh Current I1 
I1_mag = delta1_mag/delta_mag;
I1_angle = delta1_angle - delta_angle 
// Calculations Mesh Current I2 
I2_mag = delta2_mag/delta_mag;
I2_angle = delta2_angle - delta_angle 
// Calculations Line Current a 
I_a_mag   = I1_mag; 
I_a_angle = I1_angle 
// Calculations Line Current b 
I1        = complex(I1_mag*cosd(I1_angle),I1_mag*sind(I1_angle))
I2        = complex(I2_mag*cosd(I2_angle),I2_mag*sind(I2_angle))
I_b_mag   = norm(I2 - I1);
I_b_angle = atand(imag(I2 - I1),real(I2 - I1))
// Calculations Line Current c
I_c_mag   = I2_mag
I_c_angle = -180.0000 + I2_angle;
// Calculations Power Absorbed by the Load for Phase A
Sal =(I_a_mag)^2*Zan;
// Calculations Power Absorbed by the Load for Phase B
Sbl =(I_b_mag)^2*Zbn;
//  Calculations Power Absorbed by the Load for Phase C
Scl =(I_c_mag)^2*Zcn;
// Calculations Total Complex Power Absorbed by the Load 
Stl = Sal + Sbl + Scl;
Stl_real = real(Stl); 
Stl_imag = imag(Stl);
// Calculations Power Absorbed by the Source for Phase A
Sas =(complex(Van_mag*cosd(Van_angle),Van_mag*sind(Van_angle)))*conj(complex(I_a_mag*cosd(I_a_angle),I_a_mag*sind(I_a_angle)));
// Calculations Power Absorbed by the Load for Phase B
Sbs =(complex(Vbn_mag*cosd(Vbn_angle),Vbn_mag*sind(Vbn_angle)))*conj(complex(I_b_mag*cosd(I_b_angle),I_b_mag*sind(I_b_angle)));
//  Calculations Power Absorbed by the Load for Phase C
Scs =(complex(Vcn_mag*cosd(Vcn_angle),Vcn_mag*sind(Vcn_angle)))*conj(complex(I_c_mag*cosd(I_c_angle),I_c_mag*sind(I_c_angle)));
// Calculations Total Complex Power Absorbed by The Source
Sts = Sas + Sbs + Scs;
Sts_real = -real(Sts); 
Sts_imag = -imag(Sts);
//
disp("Example 12-10 Solution : ");
disp("a. The Line Currents: ");
printf(" \n I_a_mag    = Magnitude of Line Currents a                     = %.3f A",I_a_mag)
printf(" \n I_a_angle  = Angle of Line Currents a                         = %.3f degree",I_a_angle)
printf(" \n I_b_mag    = Magnitude of Line Currents b                     = %.3f A",I_b_mag)
printf(" \n I_b_angle  = Angle of Line Currents b                         = %.3f degree",I_b_angle)
printf(" \n I_c_mag    = Magnitude of Line Currents c                     = %.3f A",I_c_mag)
printf(" \n I_c_angle  = Angle of Line Currents c                         = %.3f degree",I_c_angle)
disp("")
disp("b Total Power Complex Absorbed By The Load");
printf(" \n Stl_real   = Real Part of Power Complex                       = %.3f Watt",Stl_real)
printf(" \n Stl_imag   = Imaginary Part of Power Complex                  = %.3f Var",Stl_imag)
disp("")
disp("c. Total Power Complex Absorbed By The Source");
printf(" \n Sts_real   = Real Part of Power Complex                       = %.3f Watt",Sts_real)
printf(" \n Sts_imag   = Imaginary Part of Power Complex                  = %.3f Var",Sts_imag)



