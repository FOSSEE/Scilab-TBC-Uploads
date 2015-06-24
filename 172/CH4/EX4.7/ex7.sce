//example 7
//heat transfer
clear
clc
k=1.4 //conductivity of glass pane in W/m-K
A=0.5 //total surface area of glass pane
dx=0.005 //thickness of glasspane in m
dT1=20-12.1 //temperature difference between room air and outer glass surface temperature in celsius
Q=-k*A*dT1/dx //conduction through glass slab in W
h=100 //convective heat transfer coefficient in W/m^2-K 
dT=12.1-(-10)  //temperature difference between warm room and colder ambient in celsius
Q2=h*A*dT //heat transfer in convective layer in W
printf("\n hence,the rate of heat transfer in the glass and convective layer is Q2 = %.0f kW. \n",Q2)