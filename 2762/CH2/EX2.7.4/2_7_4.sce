//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.7-4
//Principles of Momentum Transfer and Overall Balances
//given data
Ws=-155.4;
z1=0;
z2=3.05;
g=9.806;
PE=(z1-z2)*g;
KE=0;//const dia pipe'
rho=998;
p1=68.9*1000;
p2=137.8*1000;
sumF=-Ws+PE+KE+(p1-p2)/rho
mprintf("frictional loss= %f J/kg",sumF)
