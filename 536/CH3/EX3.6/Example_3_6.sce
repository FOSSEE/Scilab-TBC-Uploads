clc;

printf("Example 3.6\n");

Q=7.2;//Water flow rate
d1=40e-3; //initial pipe diameter
d2=50e-3; //diameter of pipe after enlargement
g=9.81;
printf("\n Given\n Water flow rate = %.1f m^3/h\n d1 = %d mm\n d1 = %d mm",Q,d1*1e3,d2*1e3);

u1=(Q/3600)/(%pi/4*d1^2);//Velocity in 40 mm pipe
u2=(Q/3600)/(%pi/4*d2^2);//Velocity in 50 mm pipe
printf("\n Velocity in 40 mm pipe = %.2f m/s\n Velocity in 50 mm pipe = %.2f m/s",u1,u2);
// The head lost is given by equation 3.77 as:
hf=(u1-u2)^2/(2*g);
printf("\n\n Ans\n Head lost = %.1f mm of water",hf*1e3);