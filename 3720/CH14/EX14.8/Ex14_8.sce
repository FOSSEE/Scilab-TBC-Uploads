// Example 14_8
clc;clear;funcprot(0);
//Given data
V_in=47.1; //Velocity at the inlet in m/s
beta_sl=0.0;// The leading edge angle of each stator blade in degree
beta_st=60;// The trailing edge angle in degrees
n=1750;//Speed of the impeller in rpm
r=0.40;//Radius in 

// Calculation
V_st=(V_in/(cosd((beta_st))));// The velocity leaving the trailing edge of the stator in m/s
u_theta=(n*2*%pi*r)/(60);// The tangential velocity of the rotor blades in m/s
beta_rl=atand(((u_theta)+(V_in*tand(beta_st)))/(V_in));// The angle of the leading edge of the rotor in degree
beta_rt=atand((u_theta)/(V_in));// The angle of the trailing edge of the rotor in degree
printf('\nThe rotor blade at this radius has a leading edge anle of about %0.2f degree and a trailing edge angle of about %0.2f degree \nWe pick a number like 13, 15, or 17 rotor blades.',beta_rl,beta_rt);
