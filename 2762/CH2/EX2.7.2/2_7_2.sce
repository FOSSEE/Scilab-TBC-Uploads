//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.7-2
//Principles of Momentum Transfer and Overall Balances
//given data
m=0.567;//inlet vol flow rate 
rho1=968.5;//density of fluid
m1=m*rho1/60;// mass flow rate in kg/s
m2=m1;//steady state
E1=7.45*1000;//energy supplied by the pump in J/s
Ws=-E1/m1;//work done by shaft
E2=-1408*1000;//energy given up in J/s
Q=E2/m2;
g=9.80665;
z2=20;
z1=0;
//H2-H1+(z2-z1)g+(del v^2)/2= Ws+Q
H1=355.9*1000;//enthalpy from tables
H2=Q-Ws-(z2-z1)*g+H1;
mprintf("the enthalpy is %f J/kg",H2)
mprintf(" the temp as ssen from steam tables is 48.41 deg C")
//end
