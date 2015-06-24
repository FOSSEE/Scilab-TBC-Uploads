clear ;
clc;
// Example 21.1
printf('Example 21.1\n\n');
//page no. 616
// Solution Fig. E21.1a and E21.1b

//Given
V1 = 0.1 ;// Volume of gas initially -[cubic metres]
V2 = 0.2 ;// Volume of gas finally -[cubic metres]
T1 = 300 ;// Temperature of gas initially -[K]
P1 = 200 ;// Pressure of gas finally -[kPa]
R = 8.314 ;// Universal gas constant 
n = (P1*V1)/(T1*R) ;// Moles of gas taken-[kg mol]
//You are asked to calculate work by eqn. 21.1 , but you do not know the F(force) exerted by gas , so write F = P.A, multiply divide A and eqn 21.1 reduces to W= integate(P.dv)

//(a)
// Isobaric process see fig E21.1b to see the path followed
W= integrate('-(P1)','V',V1,V2) ;// Work done by gas on piston -[kJ]
printf('\n (a)Work done by gas on piston for isobaric process is %.0f kJ .\n ',W);

//(b)
// Isobaric process see fig E21.1b to see the path followed
W= integrate('-(T1*R*n/V)','V',V1,V2) ;// Work done by gas on piston -[kJ]
printf('(b)Work done by gas on piston for isothermal process is %.2f kJ .\n ',W);