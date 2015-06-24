clc,clear
printf('Example 4.11\n\n')

mass=500 //quantity of brass to be melted
T1=920;T2=20; //final and initial temperature
S=0.094 //specific heat of brass
H1=mass*S*(T1-T2) //heat to raise temperature

L=39 //latent heat of fusion of brass
H2=mass*L//heat reqd to heat metal at 920

H=H1+H2 //total heat required
efficiency=60.2/100 //furnace efficiency 
Energy_required = H *4180/(3600*1000*efficiency) //constants used for unit conversion
printf('Energy required = %.1f kWh\n',Energy_required)
time=1/2 //time for melting in hours
printf('Average power input= %.1f kW',Energy_required/time)
