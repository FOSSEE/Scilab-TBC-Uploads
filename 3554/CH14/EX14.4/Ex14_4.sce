// Exa 14.4
// Refer circuit 14.25 given on page no. 484

clc;
clear all;

// Given data

E=10;// Volts
R=50;// Unstrained gauge resistance(Ohms)
Gain=100;// Amplifier gain
Vo=1.5;// Output Voltage

// Solution

// Using the formula: Vo=E*(Delta_R/R)*gain

Delta_R=Vo*R/(E*Gain);// Change in resistance

printf('The change in resistance =%.2f Ohms\n This means that Rt1 and Rt3 decrease by 0.07 ohms \n and Rt2 and Rt4 increase by 0.07 ohms when a certain weight is placed on the scale platform\n',Delta_R);
// The answer mentioned in the textbook is incorrect as R=50 Ohms and not 100 Ohms.
