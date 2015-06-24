clear ;
clc;
// Example 28.3
printf('Example 28.3\n\n');
//page no. 875
// Solution fig. 28.3

// Given 
//Input analysis 
soln1 = 600 ; // Mass flow rate of entering solution 1 -[lb/hr]
c1_NaOH = 10/100 ;// Fraction of NaOH in entering solution 1
T1 = 200 ;// Temperature at entry 
soln2 = 400 ;// Mass flow rate of another solution 2 entering -[lb/hr]
c2_NaOH = 50/100 ;// Fraction of NaOH in another entering solution 2

// Additional data is obtained from steam table and NaOH-H2O enthalpy-concentration chart in Appendix I at given reference temperature (del_H = 0 , 32 degree F for pure water)
F = soln1 + soln2; // Mass flow rate of final solution - [lb/hr]

 // Material balance to get composition of final solution 
F_NaOH =  c1_NaOH * soln1 + c2_NaOH * soln2 ;// Mass of NaOH in final solution-[lb]
F_H2O = F - F_NaOH ;// Mass of H2O in final solution-[lb]

// Enthalpy data from H-x chart , according to book it is as follows
H_soln1 = 152 ;// Specific enthalpy change for solution 1-[Btu/lb]
H_soln2 = 290 ;// Specific enthalpy change for solution 2-[Btu/lb]

// Energy balance
H_F = (soln1*H_soln1 + soln2*H_soln2)/F ;// Specific enthalpy change for final solution -[Btu/lb]

//(a)
printf(' (a) The final temperature of the exit solution from figure E28.3 using the obtained condition of final solution is 232 degree F \n');

//(b)
cF = F_NaOH*100/F; // Concentration of final solution -[wt % NaOH ]
printf('  (b) The concentration of final solution is %.0f wt.%% NaOH . \n',cF);

//(c)
// For fraction of H2O vapour . By interpolation , draw the tie line through the point x = .26 .H = 270 (make it parallel to 220 and 250 degree F line ). The final temperature of the exit solution from figure E28.3 using the obtained condition of final solution is 232 degree ; the enthalpy of the liquid at the bubble point at this temperature is about 175 Btu/lb . The enthalpy of saturated water vapour fro the steam table at 232 degree F is 1158 Btu/lb . Let x be the water vapour evaporated , therefore
x = (F*H_F - F*175)/(1158 - 175) ;// H2O evaporated per hour -[lb]

printf('  (c) H2O evaporated per hour is %.1f lb . \n',x);