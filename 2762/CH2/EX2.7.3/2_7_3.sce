//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.7-2
//Principles of Momentum Transfer and Overall Balances
//given data
//si units
KE=0;PE=0;Ws=0;//steady state
Power=19.63*1000;
m1=0.3964/60;//mass flow rate in si units
Q=Power/m1;//heat added
H1=0;
H2=H1+Q;//exit enthalpy
mprintf("exit enthalpy= %f kJ/kg",H2/1000)
