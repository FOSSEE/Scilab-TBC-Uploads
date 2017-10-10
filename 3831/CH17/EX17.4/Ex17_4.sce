// Example 17_4
clc;funcprot(0);
// Given data
e=10.5;// MJ
C=45/100;// MJ/kg
P=15.0/100;// MJ/kg
F=40.0/100;// MJ/kg

// Calculation
// (a)
e_C=4.20;// MJ/kg meal
e_P=8.40;// MJ/kg meal
e_F=33.1;// MJ/kg meal
e_avgMeal=(C*e_C)+(P*e_P)+(F*e_F);// MJ/kg meal
// (b)
mdot_avgMeal=(e/e_avgMeal)*2.187;// lbm of average meal/day
printf("\n(a)The specific energy content of an average meal with natural state foods,e_avg meal=%2.1f MJ/kg meal \n(b)The total mass of an average meal,mdot_avg meal=%1.1f lbm of average meal/day",e_avgMeal,mdot_avgMeal);
