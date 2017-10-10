// SAMPLE PROBLEM 1/1
clc;funcprot(0);
// Given data 
W=100;// lb
theta=45;// degree
h=200;// mi
R=3959;// mi
g_f=32.1740;// ft/sec^2
g_m=9.80655;// m/s^2
g_0=32.234;// ft/sec^2
m_E=4.095*10^23;// lbf-s^2/ft
G=3.439*10^-8;// ft^4/(lbf-s^4)

// Calculation
// (a)
m_a=W/g_f;// slugs
W_a=W*4.4482;// N
m=W_a/g_m;// kg
printf("\n(a)The mass of the module in slugs,m=%1.2f slugs \n   The weight of the module in newtons,W=%3.0f N \n   The mass of the module in kilograms,m=%2.1f",m_a,W_a,m);
// Again using the table inside the front cover, we have
m=W*0.45359;// kg
// (b)
g_h=(g_0*((R^2)/(R+h)^2));
W_h=m_a*g_h;
printf("\n(b)The weight at an altitude of 200 miles is then,W_h=%2.1f lb",W_h);
W_h=W_h*4.4482;
printf("\n   The weight at an altitude of 200 miles is in newton,W_h=%3.0f N",W_h);
W_h=(G*m_E*m_a)/((R+h)*5280)^2;
// (c)
// The weight of an object (the force of gravitational attraction) does not depend on the motion of the object. Thus the answers for part (c) are the same as those in part (b).
printf("\n(c)The weight of the module in both pounds and newtons,W_h=%2.1f lb (or) %3.0f N",W_h,W_h*4.4482);
