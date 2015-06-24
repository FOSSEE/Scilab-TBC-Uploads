//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.8-5
//Principles of Momentum Transfer and Overall Balances
//given data
v1=30.5;
D1=2.54/100;
alpha2=60;
rho=1000;
A1=(%pi*D1*D1)/4;
m=v1*A1*rho;
Rx=m*v1*(cos(%pi/3)-1);
Ry=m*v1*sin(%pi/3);
mprintf("the force on x direction =%f N",-Rx)
mprintf("the force on y direction =%f N",-Ry)
R=sqrt(Rx*Rx+Ry*Ry);
mprintf("the resultant force =%f N",-R)
