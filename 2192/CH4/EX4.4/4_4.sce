clc,clear
printf('Example 4.4\n\n')

surface_area= 6 //surface area of tank
l=sqrt(surface_area/6) //length of one side of tank
volume=l^3
m=6*90/100  * 1000 //mass of water to be heated daily in kilogram
S=4200//specific heat of water
t2=65;t1=20;//final and initial temperature
heat=m*S*(t2-t1)*10^-6 /3.6 // heat required for raising the temperature in kWh
losses =6.3*surface_area*(t2-t1)*24/1000 //losses from surface of tank 24 hours in kWh 
energy_supplied= heat+losses
loading= energy_supplied/24 //in kW
printf('Loading = %.1f kW\n',loading) 
efficiecny=100*heat/energy_supplied
printf('Efficiency of tank = %.1f percent',efficiecny)
