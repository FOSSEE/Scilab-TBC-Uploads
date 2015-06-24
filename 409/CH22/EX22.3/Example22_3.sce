clear ;
clc;
// Example 22.3
printf('Example 22.3\n\n');
//page no. 662
// Solution fig.E22.3a

//Lets take tank to be system
// Given
T = 600 ; // Temperature of steam  -[K]
P = 1000 ;// Pressure of steam -[kPa]

// Additional data for steam obtained from CD database at T and P
U = 2837.73 ;// Specific internal energy-[kJ/kg]
H = 3109.44 ;// Specific enthalpy -[kJ/kg]
V = 0.271 ;// Specific volume -[cubic metre/kg]

// Use eqn. 22.6 to get change in specific internal energy,by simplifing it with following assumption:
//1. Change in KE and PE of system = 0, therefore change in total energy = change in internal energy
//2. W = 0,work done by or on the system
//3. Q = 0 , system is well insulated
//4. Change in KE and PE of entering steam = 0
//5. H_out = 0, no stream exits the system
//6. Ut1 = 0, initially no mass exists in the system

// By the reduced equation 
Ut2 = H ;// Internal energy at final temperature-[kJ/kg]

printf('\nThe specific internal energy at final temperature is %.2f kJ/kg. \nNow use two properties of the steam (P = %i kPa and Ut2 = %.2f kJ/kg) to find final temperature (T) from steam table. \nFrom steam table we get T = 764 K.',Ut2,P,Ut2);