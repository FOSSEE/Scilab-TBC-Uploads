//Example 14-2
clc;clear;
// Properties
rho=62.30;//The density of water at 70°F in lbm/ft^3
v=370;// gal/min
g=32.2;// ft/s^2
H_1=24;// ft
H_2=72.0;// ft
n_p2=0.765;
n_p1=0.70;//Efficiency of the pump

// Calculation
bhp_1=((rho*g*v*H_1)/n_p1)*((0.1337)/(32.2*60*550));
printf('Required bhp for the 8.25-in impeller option:bhp=%0.2f hp\n',bhp_1);
bhp_2=((rho*g*v*H_2)/n_p2)*((0.1337)/(32.2*60*550));
printf('Required bhp for the 12.75-in impeller option:bhp=%0.2f hp\n',bhp_2);
printf('Clearly, the smaller-diameter impeller option is the better choice in spite of its lower efficiency, because it uses less than half the power.');
