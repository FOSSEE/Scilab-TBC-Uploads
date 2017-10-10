//Example 11.4
P=1.01*10^5;//Atmospheric pressure (N/m^2)
h=120*10^3;//Altitude (m)
g=9.80;//Acceleration due to gravity (m/s^2)
rho=P/(h*g);//Average density (kg/m^3)
printf('Average density of the atmosphere = %0.2e kg/m^3',rho)
rho_table=1.29;//Density of air, See Table 11.1 (kg/m^3)
printf('\nRatio of density of air (1.29 kg/m^3, as listed in Table 11.1) to the average density of the atmosphere = %0.1f',rho_table/rho)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
