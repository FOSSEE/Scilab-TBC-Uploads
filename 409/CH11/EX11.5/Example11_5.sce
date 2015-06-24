clear ;
clc;
// Example 11.5
printf('Example 11.5\n\n');
// Page no.324
// Solution

// Option 1
F = 15 ;//[L/hr]
cs_in = 10 ;//Nutrient conc. input vessel  - [g nutrient/L substrate]
V1 = 100 ;// [L]
V2 = 50 ;//[L]
Yxs = 0.2 ;// [cells/g]
umax = 0.4 ;//[hr^ - 1]
Ks = 2 ;//[g/L] - Monod constant
// Use eqn. 10.1 for balances and Monod eqns. applies to each vessel
//Cells: 0 - F/V * x_out  + u * x_out - 0 = 0....(a)
//Nutrient: F/V * cs_in - F/V * cs_out  + 0 - (u * x_out)/(Yxs) = 0.....(b)
//From eqn.(a) F/V = u(dilution rate)...(c)
// From eqn. (b)  x_out = Yxs(cs_in - cs_out)....(d)
u1 = F/V1 ;//[hr^ - 1] //[hr^ - 1]
cs_out = (Ks * u1/umax)/(1 - (u1/umax))  ;//Nutrient conc. output vessel  - [g nutrient/L substrate]
// Find x_out by eqn. (d)
x_out = Yxs * (cs_in - cs_out) ;//[g cells / L substrate]

//Option 2
//For vessel 1
u2 = F/V2;
cs_out1 = (Ks * u2/umax)/(1 - (u2/umax))  ;//Nutrient conc. output vessel  - [g nutrient/L substrate]
x_out1 = Yxs * (cs_in - cs_out1) ;//[g cells / L substrate]
// For vessel 2
// Eqn. (a) is now F/V  * x_out1 - F/V * x_out2 + u3 * x_out2 = 0...(e)
// Eqn. (b) is now F/V  * cs_out1 - F/V * cs_out2 + (u3 * x_out2)/Yxs = 0...(f)
// u3 = (umax * cs_out2) / (Ks + cs_out2).. Monod Eqn...(g)
// (e),(f) and (g) form a non - linear set of equations , solving them we get cs_out2 = 1.35 g nutrient/L substrate and x_out2  = 1.73 g cells/L
x_out2 =  1.73 ;// From eqn. (e),(f) and (g) - [g cells / L substrate]

printf('g cells/L from option 1 is %.2f.\n',x_out);
printf(' g cells/L from option 2 is %.2f.\n',x_out2);
printf(' By comparing option 1 and option 2 the respective answers are essentially the same.\n');