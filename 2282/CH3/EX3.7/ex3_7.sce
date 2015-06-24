// Example 3.7, page no-77
clear
clc

R=6378*10^3             //Radius of earth
mu=39.8*10^13           //Nm^2/kg
r1=500*10^3              // original orbit from earths surface
r2=800*10^3              // orbit to be raised to thisdistance
R1=R+r1
R2=R+r2
delta_v=sqrt(2*mu*R2/(R1*(R1+R2)))-sqrt(mu/R1)
delta_v_dash=sqrt(mu/R2)-sqrt(2*mu*R1/(R2*(R1+R2)))

printf("Two thrusts to be applied are,\n Delta_v = %.2f m/s \n Delta_v_dash = %.2f m/s",delta_v,delta_v_dash)
