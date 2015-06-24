clc;

printf("Example 3.9\n");

u1=1.5; // velocity
D1=75e-3; //depth
g=9.81;
printf("\n Given\n velocity before jump= %.1f m/s\n depth before jump= %d mm",u1,D1*1e3);
//The depth of fluid in the channel after the jump is given by:
D2=0.5*(-D1+(D1^2+(8*u1^2*D1/g)^0.5)); //equation 3.113
printf("\n\n The depth of fluid in the channel after the jump is = %.1f mm",D2*1e3);
//If the channel is of uniform cross-sectional area, then:
u2=u1*D1/D2;
printf("\n The velocity of fluid in the channel after the jump is = %.2f m/s",u2);