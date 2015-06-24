// chapter 13
// example 13.12
// Determine the value of thermal resistance, heat sink and temperature at base
// page-840
clear;
clc;
// given
Pa=30; // in W (power loss)
Tc=125; // in degree C (junction temperature)
Ta=40; // in degree C (ambient temperature)
theta_CJ=0.7; // in degree C/W (junction to heat-sink thermal resistance)
// calculate
theta_CA=(Tc-Ta)/Pa; // calculation of total thermal resistance
theta_CS=theta_CA-theta_CJ; // calculation of thermal resistance of heat sink
T_base=Ta+(Pa*theta_CS); // calculation of temperature at base
printf("\nThe  total thermal resistance is \t\t theta_CA=%.2f degree C/W",theta_CA);
printf("\nThe  thermal resistance of heat sink is \t theta_CS=%.2f degree C/W",theta_CS);
printf("\nThe temperature at base is \t\t\t T_base=%.f degree C",T_base);
// Note :The answer vary slightly due to precise calculation