clc
//Initialization of variables
sw=62.4 //lb/ft^3
sw2=9.81 //kN/m^3
sg=13.55 //No units
g=32.2 //ft/s^2
//calculations
dwater=sw/g
dwater2=sw2/(9.81)
Gmercury=sg*sw
Gmercury2=sg*sw2
dmercury=sg*dwater
dmercury2=sg*dwater2
//Results
printf('Density of water = %.2f slugs/ft^3',dwater)
printf('\n Density of water = %.2f g/ml',dwater2)
printf('\n Density of mercury = %.1f slugs/ft^3',dmercury)
printf('\n Density of mercury = %.2f kN/m^3',dmercury2)
printf('\n Specific weight of mercury = %d lb/ft^3',Gmercury+1)
printf('\n Specific weight of mercury = %d kN/m^3',Gmercury2+1)
