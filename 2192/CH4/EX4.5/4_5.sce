clc,clear
printf('Example 4.5\n\n')

m=2.5 //quantity of aluminium to be melted
t1=15;t2=658;//melting point and initial temperature
S=0.212 *1000*4.18 //specific bheat of aluminium
L=320000//latent heat of aluminium
W=(  m*S*(t2-t1) + m*L  ) *10^-6/ 3.6 // heat required for melting in kWh
energy_input = 5*15/60 //converting to kWh
efficiency = 100*W/energy_input //efficiency of furnace

printf('Efficiency of furnace = %.1f percent',efficiency)
