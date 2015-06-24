//clear//
clear;
clc;

//Example 27.1
//Given
T = 60; //[F]
wA = 0.30; //[MgSO4]
wB = 0.70; //[H2O]

//Solution
//From Fig. 27.3 it is noted that the crystals are MgSO4.7H2O
//and that the concentration of the mother liquid is
xA = 0.245; //[anhydrous MgSO4]
xB = 0.755; //[H2O]
//Bases: 
F_in = 1000; //[kg]
H2O_in = F_in*wB; //[kg]
H2O_evp = 0.05*H2O_in; //[kg]
M1 = 120.4; //[MgSO4 molecular weight]
M2 = 246.5; //[MgSO4.7H2O molecular weight]
M2_in = wA*F_in*M2/M1; //[kg]
H2O_free = F_in-H2O_evp-M2_in; //[kg]
ML = 100; //[kg]
M2_in100 = ML*xA*M2/M1; //[kg]
H2O_free100 = ML - M2_in100; //[kg]
M2_ML = M2_in100/H2O_free100*H2O_free; //[kg]
FC = M2_in - M2_ML; //[kg]
disp(FC,'kilograms of crystals obtained per kilogram of original mixture = ') 
