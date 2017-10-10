// Exa 4.6

clc;
clear all;
// Referring Fig. 4.6- Example on loading effect from page no.81

// Given data
R1=10000; // Ohms
R2=10000;// Ohms
V=100; // Applied Voltage

// Solution

VR2= R2/(R1+R2)* V;// True Voltage across R2 resistance
printf('True voltage across R2 = %d V \n ',VR2);

// Case-1 : Using a voltmeter 1 having sensitivity of 1000 Ohms/V

S1=1000;  // Sensitivity in Ohms/volt
R21=S1*VR2; //R2 resistance on its 50 V range(Ohms)
Req1=R21*R2/(R21+R2);// Equivalent resistance across R2(ohms)
printf('Connecting the meter 1 across R2 causes an equivalent parallel resistance given by %.2f k Ohms \n ',Req1/1000);
V21=Req1/(Req1+R2) * V; 
printf('Now the voltage across the total combination is given by %.2f V \n ',V21);

// Case-2 : Using a voltmeter having sensitivity of 20,000 Ohms/V

S22=20000; // Sensitivity in Ohms/volt
R22=S22*VR2;// R2 resistance on its 50V range(Ohms)
Req2=R22*R2/(R22+R2);// Equivalent resistance across R2(ohms)
printf('Connecting the meter 2 across R2 causes an equivalent parallel resistance given by %.2f k Ohms \n ',Req2/1000);
V22=Req2/(Req2+R2) * V; 
printf('Now the voltage across the total combination is given by %.2f V \n ',V22);

disp(" This example shows that a high sensitivity voltmeter(i.e voltmeter 2 in  this case) should be used to get accurate readings");
// The answers vary due to riund off error.
