clc
// initialization of variables
D=10/100  //diameter of cylinder in m
d=50/1000  //compression in spring in m
Patm=100000    // atmospheric pressure in Pa
K=10*1000   // spring constant converted in  N/m
w=50*9.81  // weight of piston in Newton =mass*gravitational acceleration

// find the initial pressure in cylinder by force balance
A=(%pi*D^2)/4; // area of piston
P1=((Patm*A)+w)/A;      // balancing forces on piston P1.A=Patm.A+W

// work done by air to raise the piston for 50mm if spring not present
Wgas=P1*A*d; // pressure*area= force and Work = Force* displacement

// work done on spring to compress
Wspring=(K*d^2)/2; // Work in j

// now total work done by air is sum of two works
Wnet=Wgas+Wspring; // Work in j

printf("The net work done by air is %.2f J",Wnet)
//The answer is approximated in textbook but here it is precise
