// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-4

clear; clc; close; // Clear the work space and console.

// Given data
V = 600 ; // Voltage rating of the compound motor in volt
P_hp = 150 ; // Power rating of the compound motor in hp
I_L = 205 ; // Full-load rated line current in A
S = 1500 ; // Full-load Speed in rpm of the compound generator
R_sh = 300 ; // Shunt field resistance in ohm
R_a = 0.05 ; // Armature resistance in ohm
R_s = 0.1 ; // Series field resistance in ohm
V_a  = 570 ; // Applied voltage in volt
I_a = 6 ; // Armature current in A
S_o = 1800 ; // No-load Speed in rpm of the compound generator

// Calculations
// case a
Rot_losses = V_a*I_a ; // Rotational losses in W
// If x is fraction of full-load
x1 = (1/4);
S_1 = S_o - 300*x1 ; // Speed at 1/4 load
Rot_losses_S_1 = (S_1/S)*Rot_losses ; // Rotational losses in W at speed S_1

x2 = (1/2);
S_2 = S_o - 300*x2 ; // Speed at 1/2 load
Rot_losses_S_2 = (S_2/S)*Rot_losses ; // Rotational losses in W at speed S_2

x3 = (3/4);
S_3 = S_o - 300*x3 ; // Speed at 3/4 load
Rot_losses_S_3 = (S_3/S)*Rot_losses ; // Rotational losses in W at speed S_3

x4 = (5/4);
S_4 = S_o - 300*x4 ; // Speed at 5/4 load
Rot_losses_S_4 = (S_4/S)*Rot_losses ; // Rotational losses in W at speed S_4

// case b
I_sh = V / R_sh ; // Full-load shunt field current in A
Ia = I_L - I_sh ; // Full-load armature current in A
FL_variable_loss = (Ia^2)*(R_a + R_s); // Full-load variable electric losses in W

x1_variable_loss = FL_variable_loss * (x1)^2 ; // Variable losses at 1/4 load
x2_variable_loss = FL_variable_loss * (x2)^2 ; // Variable losses at 1/2 load
x3_variable_loss = FL_variable_loss * (x3)^2 ; // Variable losses at 3/4 load
x4_variable_loss = FL_variable_loss * (x4)^2 ; // Variable losses at 5/4 load

// case c
// Efficiency of motor = (Input - losses)/Input
// where Input = volts*amperes*load_fraction
//       Losses = field loss + rotational losses + variable electric losses
// Input
Input_FL = V * I_L ; // Input in W at full load
Input_x1 = V * I_L * x1 ; // Input in W at 1/4 load
Input_x2 = V * I_L * x2 ; // Input in W at 1/2 load
Input_x3 = V * I_L * x3 ; // Input in W at 3/4 load
Input_x4 = V * I_L * x4 ; // Input in W at 5/4 load

Field_loss = V * I_sh // Field loss for each of the conditions of load

// Rotational losses are calculated in part a while variable electric losses in part b

// Total losses 
Losses_FL = Field_loss + Rot_losses + FL_variable_loss ; // Total losses for full load 
Losses_1 = Field_loss + Rot_losses_S_1 + x1_variable_loss ; // Total losses for 1/4 load 
Losses_2 = Field_loss + Rot_losses_S_2 + x2_variable_loss ; // Total losses for 1/2 load 
Losses_3 = Field_loss + Rot_losses_S_3 + x3_variable_loss ; // Total losses for 3/4 load 
Losses_4 = Field_loss + Rot_losses_S_4 + x4_variable_loss ; // Total losses for 5/4 load 

// Efficiency
eta_FL = ( (Input_FL - Losses_FL) / Input_FL ) ; // Efficiency for 1/4 load
eta_1 = ( (Input_x1 - Losses_1) / Input_x1 ) ; // Efficiency for 1/4 load 
eta_2 = ( (Input_x2 - Losses_2) / Input_x2 ) ; // Efficiency for 1/2 load 
eta_3 = ( (Input_x3 - Losses_3) / Input_x3 ) ; // Efficiency for 3/4 load 
eta_4 = ( (Input_x4 - Losses_4) / Input_x4 ) ; // Efficiency for 5/4 load 

// Display the results
disp("Example 12-4 Solution : ");

printf(" \n a: Rotational loss = %d W at %d rpm(rated load)\n",Rot_losses,S);
printf(" \n    Speed at %.2f load = %d rpm  ",x1 , S_1 );
printf(" \n    Rotational loss at %d rpm = %d W \n ", S_1 , Rot_losses_S_1 );

printf(" \n    Speed at %.2f load = %d rpm  ",x2 , S_2 );
printf(" \n    Rotational loss at %d rpm = %d W \n ", S_2 , Rot_losses_S_2 );

printf(" \n    Speed at %.2f load = %d rpm  ",x3 , S_3 );
printf(" \n    Rotational loss at %d rpm = %d W \n ", S_3 , Rot_losses_S_3 );

printf(" \n    Speed at %.2f load = %d rpm  ",x4 , S_4 );
printf(" \n    Rotational loss at %d rpm = %d W \n ", S_4 , Rot_losses_S_4 );

printf(" \n b: Full-load variable loss = %d W\n ",FL_variable_loss );
printf(" \n    Variable losses ,");
printf(" \n    at %.2f load = %.2f W ",x1 , x1_variable_loss );
printf(" \n    at %.2f load = %.2f W ",x2 , x2_variable_loss );
printf(" \n    at %.2f load = %.2f W ",x3 , x3_variable_loss );
printf(" \n    at %.2f load = %.2f W \n ",x4 , x4_variable_loss );

printf(" \n c: Efficiency of motor = (Input - losses)/Input ");
printf(" \n    where\n     Input = volts*amperes*load_fraction ");
printf(" \n     Losses = field loss + rotational losses + variable electric losses");
printf(" \n    Input,\n    at %.2f load = %d W ",x1 , Input_x1 );
printf(" \n    at %.2f load = %d W ",x2 , Input_x2 );
printf(" \n    at %.2f load = %d W ",x3 , Input_x3 );
printf(" \n    at full load = %d W " , Input_FL );
printf(" \n    at %.2f load = %d W \n ",x4  , Input_x4 );

printf(" \n    Field loss for each of the conditions of load = %d W \n",Field_loss);
printf(" \n    Rotational losses are calculated in part a while variable ");
printf(" \n    electric losses in part b \n");

printf(" \n    Efficiency at %.2f load = %f = %.1f percent ",x1,eta_1,eta_1*100);
printf(" \n    Efficiency at %.2f load = %f = %.1f percent ",x2,eta_2,eta_2*100);
printf(" \n    Efficiency at %.2f load = %f = %.1f percent ",x3,eta_3,eta_3*100);
printf(" \n    Efficiency at full load = %f = %.1f percent ",eta_FL,eta_FL*100);
printf(" \n    Efficiency at %.2f load = %f = %.1f percent \n",x4,eta_4,eta_4*100);

printf(" \n d: ________________________________________________________________________________________________________");
printf(" \n        Item \t\t\t At 1/4 load \t At 1/2 load \t At 3/4 load \t At Full-load\t At 5/4 load   ");
printf(" \n    ________________________________________________________________________________________________________");
printf(" \n    Input(watts)\t\t %d \t\t %d \t\t %d \t\t %d \t %d ",Input_x1,Input_x2,Input_x3,Input_FL,Input_x4);
printf(" \n\n    Field loss(watts)\t\t %d \t\t %d \t\t %d \t\t %d \t\t %d ",Field_loss,Field_loss,Field_loss,Field_loss,Field_loss);
printf(" \n\n    Rotational losses");
printf(" \n    from part(a)(watts)\t\t %d \t\t %d \t\t %d \t\t %d \t\t %d ",Rot_losses_S_1,Rot_losses_S_2,Rot_losses_S_3,Rot_losses,Rot_losses_S_4);
printf(" \n\n    Variable electric losses");
printf(" \n    from part(b)(watts)\t\t %.2f \t %.2f \t %.2f \t %.2f \t %.2f ",x1_variable_loss,x2_variable_loss,x3_variable_loss,FL_variable_loss,x4_variable_loss);
printf(" \n\n    Total losses(watts)\t\t %.2f \t %.2f \t %.2f \t %.2f \t %.2f ",Losses_1,Losses_2,Losses_3,Losses_FL,Losses_4);
printf(" \n    ________________________________________________________________________________________________________");
printf(" \n    Efficiency η(percent)\t %.1f \t\t %.1f \t\t %.1f \t\t %.1f \t\t %.1f  ",eta_1*100,eta_2*100,eta_3*100,eta_FL*100,eta_4*100);
printf(" \n    ________________________________________________________________________________________________________");
