clc,clear
printf('Example 7.15\n\n')

diameter_shaft = 14
length_shaft=30
Surface_area_shaft =%pi* length_shaft * diameter_shaft

thickness_coating = 1.5/10
density_Ni= 8.9
Mass_Ni= Surface_area_shaft * thickness_coating*density_Ni

ECE_Ni=0.000304 //gram/C
electricity_required= Mass_Ni/ECE_Ni
printf('Theoritical value of electricity required = %.1f Amp-hour\n',electricity_required/3600)

current_density=200*10^-4 //in A/cm^2
current=  current_density* Surface_area_shaft 
printf('Theoritical value of current required = %.1f A\n',current)
Time_required= electricity_required / current

printf('Time required = %.0f hours',Time_required/3600)
