clc;
//Example 19.6
//page no. 255
printf("\n Example 19.6 page no. 255\n\n");
//refer to example 19.5
//if gasoline has vapor pressure of 50000Pa ,we have to calculate flow rate at whhich cavitation to occur
P1=101325//upstream pressure,Pa
P2=50000//given vapor pressure,Pa
D1=0.06//upstream diameter,m
D2=0.02//throat diameter,m
rho=680//density of gasoline
v2=sqrt((2*(P1-P2))/rho*(1-D2^4/D1^4))//velocity
printf("\n velocity v2=%f m/s",v2); 
q=(%pi/4)*D2^2*v2//flow rate
printf("\n flow rate q=%f m^3/s",q);
 
