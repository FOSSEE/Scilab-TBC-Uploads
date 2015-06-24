//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.6-1
//Principles of Momentum Transfer and Overall Balances
//given data
//oil density=892 kg/m3 , volumetric flow rate= (1.388*10^-3) m3/s, schedule 40 pipes are being used
//a) 
A1=0.02330*0.0929;//cross sectional area in m2
A3=0.01414*0.0929;//cross sectional area in m2
rho=892;//oil density=892 kg/m3
m1=(1.388/1000)*rho;//mass flow rate in kg/s in pipes 1 and 2
m3=m1/2;//mas flow rate divides eqully in 3 pipes
v1=m1/(rho*A1);//velocity at 1 pipe'
v3=m3/(rho*A3);//
G1=(v1)*rho;
mprintf("a) the total mass flow rate in pipe 1 is %f kg/s",m1)
mprintf(" b) the velocity in pipe 1 is %f m/s",v1)
mprintf(" the velocity in pipe 3 is %f m/s",v3)
mprintf(" c) the mass velocity in pipe 1 is %f kg/s m2",G1)
//end
