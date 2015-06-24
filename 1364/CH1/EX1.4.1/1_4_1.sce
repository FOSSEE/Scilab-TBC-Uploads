clc
//initialisation of variables
ws= 64 //lbf/ft^3
wi= 57 //lbf/ft^3
//CALCULATIONS
vabyvb= (ws/wi)-1
vtbyva= (1/vabyvb)+1
vabyvt= (1/vtbyva)*100
//RESULTS
printf ('percentage of total volume extended above the surface= %.1f per cent',vabyvt)
