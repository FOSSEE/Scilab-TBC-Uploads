// SAMPLE PROBLEM 5/12
clc;funcprot(0);
// Given data
omega_OB=10;// rad/sec
theta=45;// degree
OBbar=(6*sqrt(2))/12;// ft
BCbar=(14*sqrt(2))/12;// ft
ACbar=14/12;// ft
CDbar=15.23/12;// ft

// Calculation
omega_BC=(OBbar*omega_OB)/BCbar;// rad/sec CCW
v_A=ACbar*omega_BC;// ft/sec
v_D=CDbar*omega_BC;// ft/sec
printf("\nThe velocity of A,v_A=%1.2f ft/sec \nThe velocity of D,v_D=%1.2f ft/sec \nThe angular velocity of link AB,omega_AB=%1.2f rad/sec CCW",v_A,v_D,omega_BC);
