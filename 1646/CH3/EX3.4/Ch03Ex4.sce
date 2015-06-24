// Scilab Code Ex3.4: Page:133 (2011) 
clc;clear;
v_mp = 1;   // Most probable speed of gas molecules, m/s
dv = 1.01*v_mp-0.99*v_mp;   // Change in most probable speed, m/s
v = v_mp;   // Speed of the gas molecules, m/s
Frac = 4/sqrt(%pi)*1/v_mp^3*exp(-v^2/v_mp^2)*v^2*dv; 
printf("\nThe fraction of oxygen gas molecules within one percent of most probable speed = %5.3f", Frac);

// Result 
// The fraction of oxygen gas molecules within one percent of most probable speed = 0.017 



