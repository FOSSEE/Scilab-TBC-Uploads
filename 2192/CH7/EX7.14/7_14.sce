clc,clear
printf('Example 7.14\n\n')

ECE_Cu=0.3281*10^-6 *3600//in kg/Ah

//500 cells, 6000 A, 40 hours per week, 52 weeks
ampere_hours_per_annum=500*6000*40*52
annual_output= ECE_Cu*ampere_hours_per_annum/1000 //in tonnes

V=0.25 //voltage per cell
energy_consumd_per_annum= ampere_hours_per_annum * V/1000 //in kWh
energy_consumtn_per_ton=energy_consumd_per_annum/ annual_output

printf('Energy consumption per tonne = %.2f kWh/tonne', energy_consumtn_per_ton)
