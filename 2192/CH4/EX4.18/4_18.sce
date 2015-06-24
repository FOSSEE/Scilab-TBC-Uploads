clc,clear
printf('Example 4.18\n\n')

m=1.8 //mass of aluminium to be melt
t1=15 //initial temperature
t2=660 //melting temperature

S=880 //specific heat of aluminium
L=32000 //latent heat of aluminium

heat_required= m*S*(t2-t1) + m*L
heat_required= heat_required*2.78*10^-7 //converting Joules to kWh
T=10//time taken for melting in minutes
energy_input=5*(T/60) //In kWh
efficiency_of_furnace = 100* heat_required / energy_input
printf('Efficiency of furnace = %.0f percent',efficiency_of_furnace )
