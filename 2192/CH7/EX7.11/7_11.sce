clc,clear
printf('Example 7.11\n\n')

ECE_Cu = 0.327*10^-6*3600*1000 //in kg per 1000 Ah

//400 cells, 5000 A , 100 hours per week, 52 weeks
ampere_hours_per_annum=400*5000*100*52

annual_output = ECE_Cu*ampere_hours_per_annum/(1000*1000) //in tonnes
printf('Annual output of refined copper = %.0f tonnes',annual_output)
V=0.25 //voltage per cell
energy_per_annum=ampere_hours_per_annum*V/1000 //in kWh

energy_consumpt_per_ton=energy_per_annum/ annual_output 
printf('\nEnergy consumption per tonne= %f kWh/tonne',energy_consumpt_per_ton)
