clc
clear
//DATA GIVEN
Q=-50;                          //heat rejected to cooling water in kJ/kg
W=-100;                         //work input in kJ/kg

//using First Law of Thermodynamics, Q=(u2-u1)+W
Du=Q-W;                         //(u2-u1) change in internal energy in kJ/kg
//since Du is +ve, there is gain in internal energy

printf('The GAIN in internal energy is: %2.0f kJ/kg. \n',Du);
