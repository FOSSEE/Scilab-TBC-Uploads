clc
clear
//DATA GIVEN
u1=450;                         //internal energy at beginning of the expansion in kJ/kg
u2=220;                         //internal energy after expansion in kJ/kg
W=120;                          //work done by the air during expansion in kJ/kg

//using First Law of Thermodynamics, Q=(u2-u1)+W
Q=(u2-u1)+W;                    //heat flow in kJ/kg
//since Q is -ve, there is rejection of heat

printf('The heat REJECTED by air is: %3.0f kJ/kg. \n',(-Q));
