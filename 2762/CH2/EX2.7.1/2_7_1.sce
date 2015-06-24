//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.7-1
//Principles of Momentum Transfer and Overall Balances
//given data
//Q=(z2-z1)*g+(v2^2-v1^2)/2 + (H2-H1)
//for KE terms
v1=1.52;//velociy of inlet stream
v2=9.14;//velocity of exit stream
KE=((v1^2)-(v2^2))/2;
//for PE terms 
z1=0 ,// (z2-z1)*g
z2=15.2;//ht of exit stream
g=9.80665;// g force
PE=(z2-z1)*g;
//enthalpy change
H2=2771.4*1000;//exit ,enthalpy data from appendix
H1=76.97*1000;//inlet enthalpy
H=H2-H1;
Q=KE+PE+H;
mprintf("the amount of heat to be added %f J/kg",Q)
//end
