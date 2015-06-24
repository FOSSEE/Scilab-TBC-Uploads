clc
clear
//DATA GIVEN
//initial state
p1=10^5;                        //initial pressure of air in Pa
v1=1.8;                         //volume of air in m^3/kg
T1=25+273;                      //initial temperature of air in K
//final state
p2=5*10^5;                      //final pressure of air in Pa
T2=25+273;                      //final temperature of air in K

//process used- ISOTHERMAL (Constant temperature)
W12=[p1*v1*log(p1/p2)]/1000;    //work in kJ/kg
//since W is -ve, work is supplied to the air

//since temperature is constant
Du=0;                           //(u2-u1) change in internal energy in kJ/kg

//using First Law of Thermodynamics, Q=(u2-u1)+W
Q=Du+W12;
//since Q is -ve, there is rejection of heat from system to surroundings

printf(' (i) The Work done on the air is: %3.1f kJ/kg. \n',(-W12));
printf(' (ii) The change in internal energy is: %1.0f kJ/kg. \n',(Du));
printf('(iii) The Heat REJECTED is: %3.1f kJ/kg. \n',(-Q));
