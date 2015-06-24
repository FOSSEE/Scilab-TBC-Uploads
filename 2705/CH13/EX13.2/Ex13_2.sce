clear;
clc;
disp('Example 13.2');

// aim : To determine
// (a) the entry angle of  the blades
// (b) the work done per kilogram of steam per second
// (c) the diagram efficiency
// (d) the end-thrust per kilogram of steam per second

// given values
Cai = 600;// steam velocity, [m/s]
sia = 25;// steam inlet angle with blade, [degree]
U = 255;// mean blade speed, [m/s]
sea = 30;// steam exit angle with blade,[degree] 

// solution
// (a)
// using Fig.13.13(diagram for example 13.2)
eab = 41.5;// entry angle of blades, [degree]
mprintf('\n (a) The angle of blades is  =  %f  degree\n',eab);

// (b)
Cwi_plus_Cwe = 590;// velocity of whirl, [m/s]
W = U*(Cwi_plus_Cwe);// work done on the blade,[W/kg]
mprintf('\n (b) The work done on the blade is  =  %f kW/kg\n',W*10^-3);

// (c)
De = 2*U*(Cwi_plus_Cwe)/Cai^2;// diagram efficiency 
mprintf('\n (c) The diagram efficiency is  =  %f percent\n',De*100);

// (d)
// again from the diagram
Cfe_minus_Cfi = -90;// change invelocity of flow, [m/s]
Eth = Cfe_minus_Cfi;// end-thrust, [N/kg s]
mprintf('\n (d) The End-thrust is  =  %f  N/kg',Eth);

//  End
