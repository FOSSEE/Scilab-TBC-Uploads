clc
clear
//DATA GIVEN
//initial state
p1=0.105;                       //pressure of gas in MPa
V1=0.4;                         //volume of gas in m^3
//final state
p2=0.105;                       //pressure of gas in MPa
V2=0.20;                        //volume of gas in m^3

Q=-42.5;                        //heat transferred in kJ
p=p1;

//process used- ISOBARIC (Constant pressure)
W12=p*(V2-V1)*1000;             //work in kJ
//using First Law of Thermodynamics, Q=(u2-u1)+W
Du=Q-W12;                       //(u2-u1) change in internal energy in kJ
//since Du is -ve, there is decrease in internal energy

printf('The DECREASE in internal energy is: %2.1f kJ. \n',(-Du));
