//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.8-2
//Principles of Momentum Transfer and Overall Balances
//given data
V=0.03154;//vol flow rate in si units
D1=0.0635;// upstream ID
A1=(%pi/4)*D1*D1;//area of cross section
D2=0.0286;// downstream ID
A2=(%pi/4)*D2*D2;//area of cross section
rho=1000;//density of water
m=V*rho;//mass flow rate of water upstream
m1=m;
m2=m;
v1=V/A1;//vel at pt 1
v2=V/A2;//vel at pt 2
p2=0;//gage pressure
p1=(((v2*v2/2)-(v1*v1/2))+(p2/rho))*rho;
//for x direction the momentum balance equation is used
Rx=m*(v2-v1)-A1*p1;
mprintf("the resultant force towards the negative x direction is %f N",-Rx)
