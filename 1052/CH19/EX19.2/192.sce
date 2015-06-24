clc;
//Example 19.2
//page no 250
printf("Example 19.2 page no 250\n\n");
//pitot tube is located at the center line of a horizontal pipe transporting air
rho=0.075//density of gas ,lb/ft^2
h=0.0166667//height difference,ft
g=32.2//gravitational acc. lb/ft^2
rho_m=62.4//density of medium which is air
v=sqrt(2*g*h*(rho_m-rho)/rho)//velocity
printf("\n velocity v=%f ft/s",v);
v_max=v//because at that point where the reading was taken is the centerline
printf("\n maximum veocity v_max=%f ft/s",v_max);
//since the flowing fluid is air at a high velocity the flow has a high probability of being turbilent .from chapter 14,assume
//v_av/v_max=0.815
v_av=v_max*0.815
printf("\n average velocity v_av=%f ft/s",v_av);
