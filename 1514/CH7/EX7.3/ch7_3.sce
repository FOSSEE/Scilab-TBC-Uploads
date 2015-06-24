//chapter 7
//example 7.3
//page 201
clear;
clc ;
//given
thetaJC=1; //junction to case thermal impedance in degreeC/W
Tj=90; //junction temperature
Ta=25; // ambient temperature

Vce=25;//collector to emitter voltage in volts
Ic=1;//collector current in A
Q=Vce*Ic; //transistor power dissipation in W

thetaCA=(Tj-Ta)/Q-thetaJC; //case to air thermal impedance (thetaCS+thetaCA)

printf('thetaCA=%.1f degreeC/W',thetaCA)
disp("Choose small and least expensive heat sink i.e. NC-421")
