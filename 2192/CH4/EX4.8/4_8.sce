clc,clear
printf('Example 4.8\n\n')

arc_voltage=50
I=5000 //current drawn
resistance= 0.002 //resistance of furnace leads including transformer
reactance= 0.004  //reactance of furnace leads including transformer
V1= I*resistance //voltage drop due to resistance of transformer
V2= I*reactance //voltage drop due to reactance of transformer
V_OC= sqrt(  (arc_voltage+V1)^2 + V2^2 ) //open circuit phase voltage of transformer secondary

//part(i)
pf=(arc_voltage+V1)/V_OC
power_drawn= I*V_OC*pf //power drawn from supply per phase
total_power_drawn =power_drawn*3
printf('Power factor of supply = %.4f\n',pf)
printf('kW drawn from supply= %.0f kW\n',total_power_drawn/1000)

//part(ii)
m=2*10^3 //mass of steel to melt
S=120//specific heat of steel
L=8890//latent heating of fusion
T2=1370;T1=20; //melting point and initial temperature
efficiency=65/100//efficiency of furnace
energy_required= ( m*S*(T2-T1) + m*L)   /869 //energy reqd to melt steel in watts
power_utilised= total_power_drawn * efficiency
time= energy_required /power_utilised  //time required for melting
printf('Time required for melting = %d minutes %d seconds\n\n',60*time,60*(60*time- floor(60*time) ))

printf('Answers might slightly vary due to lack of accuracy in energy required calculation')
