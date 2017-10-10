// Example 12.6
// Determine (a) The increment increase in load on each machine if an 
// additional 400 A load is connected to the bus (b) Current carried 
// by each machine
// Page No. 502

clc;
clear;
close;

// Given data
p1=100000;                // Rated power in generator A
p2=300000;                // Rated power in generator B
v=250;                    // Rated voltage in machine
p3=30000;                 // Rated power in generator C
Ibnew=400;                // New bus current
I1=200;
I2=500;

// (a) The increment increase in load on each machine if an additional 400 A 
// load is connected to the bus

IArated=p1/v;                      // Rated current in generator A
IBrated=p2/v;                      // Rated current in generator B
Ib=p3/v;                           // Original bus current
DelVbus=Ibnew/(40+120);            // Change in bus current
DelIA=40*DelVbus;
DelIB=120*DelVbus;


// (b) Current carried by each machine

IA=I1+DelIA;                // Current in generator A
IB=I2+DelIB;                // Current in generator B


// Display result on command window
printf("\n The increment increase in load on machine A = %0.0f A ",DelIA);
printf("\n The increment increase in load on machine B = %0.0f A ",DelIB);
printf("\n Current carried by machine A = %0.0f A ",IA);
printf("\n Current carried by machine B = %0.0f A ",IB);

