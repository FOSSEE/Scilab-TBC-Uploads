// Example 17_5
clc;funcprot(0);
// Given data
m_h=1.00;// kg
E_me=33.1;// MJ
E_na=10.5;// MJ
m_fat=10.0;// kg

// Calculation
// (a)
mdot_fat=E_na/E_me;// The mass of body fat consumed per day in kg of body/d
// (b)
t=m_fat/mdot_fat;// d
printf("\n(a)The mass of body fat consumed per day,mdot_fat=%0.3f kg of body/d \n(b)The number of fasting days required to lose (consume) 10.0 kg of body fat,t=%2.1f d",mdot_fat,t);
