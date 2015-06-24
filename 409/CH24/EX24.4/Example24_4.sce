clear ;
clc;
// Example 24.4
printf('Example 24.4\n\n');
//page no. 730
// Solution 

// Pick the system as gas plus heater 
// Given
Pi = 1.5 ;// Intial pressure - [Pa]
Vi = 2*10^-3 ;// Initial volume of gas - [cubic metre]
Ti = 300 ;// Initial temperature - [K]
W = 480 ;// Work done by heater on system
t = 5 ;// Time for which current is supplied -[ min]
m_ht = 12 ;// Mass of the heater - [g]
C_ht = 0.35 ;// Heat capacity of heater - [ J/gK]
R = 8.314 ;// Ideal gas constant - [(Pa*cubic metre)/(g mol* K)]

// It is assumed that heat transfer across system boundary for this short time is negligible , therefore Q = 0
// Using the above assumption the equation reduces to del_U = W, therefore 
del_U = W ;// Change in nternal energy - [J]

// Gas is assumed to be ideal, therefore get n by using pv = nRT
n = (Pi*Vi)/(R*Ti) ;// Number of moles of argon gas -[g mol]
Cp = (5/2)* R ;// Specific heat capacity of argon gas at constant pressure - [ J/gK]
Cv = Cp - R ;//  Specific heat capacity of argon gas at constant volume - [ J/gK]
// del_Ug = n*Cv*(Tf - Ti) - change in internal energy of gas
// del_Uh = m_ht*C_ht*(Tf - Ti) - change in internal energy of gas
// get total change in internal energy =  del_Ug + del_Uh , and solve it for Tf ( final temperature )
deff('[y]=f(Tf)','y=m_ht*C_ht*(Tf - Ti) + n*Cv*(Tf - Ti) - del_U');
Tf=fsolve(400,f) ;// Final temperature -[K] 
funcprot(0);
 printf(' Final temperature of gas is %.0f K .\n',Tf);
 
 Pf = (Tf/Ti)*Pi ;// Final pressure - [Pa]
  printf(' Final pressure in chamber is %.2f Pa .\n',Pf);